import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/calendar/v3.dart';
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';

part 'google_calendar_auth_notifier.freezed.dart';

@freezed
abstract class GoogleCalendarAuthState with _$GoogleCalendarAuthState {
  const factory GoogleCalendarAuthState.disconnected() = _Disconnected;
  const factory GoogleCalendarAuthState.connected(CalendarApi calendar) =
      _Connected;
  const factory GoogleCalendarAuthState.error(String messgae) = _Error;
}

class GoogleCalendarAuthNotifier
    extends StateNotifier<GoogleCalendarAuthState> {
  late StreamSubscription _userStateSubscription;
  final _googleSignIn =
      GoogleSignIn(scopes: [CalendarApi.calendarEventsReadonlyScope]);

  GoogleCalendarAuthNotifier() : super(GoogleCalendarAuthState.disconnected()) {
    _listenToUserState();
  }

  void _listenToUserState() {
    _userStateSubscription =
        FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      if (user == null) {
        state = GoogleCalendarAuthState.disconnected();
      } else {
        if (_googleSignIn.currentUser == null) {
          await _googleSignIn.signInSilently();
        }

        final httpClient = await _googleSignIn.authenticatedClient();

        if (httpClient != null) {
          state = GoogleCalendarAuthState.connected(CalendarApi(httpClient));
        } else {
          state = GoogleCalendarAuthState.error('Could not create http client');
        }
      }
    });
  }

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        await FirebaseAuth.instance.signInWithCredential(credential);
      }
    } catch (e) {
      state = GoogleCalendarAuthState.error('Could not sign in with google');
    }
  }

  @override
  void dispose() {
    _userStateSubscription.cancel();
    super.dispose();
  }
}

final googleCalendarProvider =
    StateNotifierProvider<GoogleCalendarAuthNotifier, GoogleCalendarAuthState>(
  (ref) => GoogleCalendarAuthNotifier(),
);
