// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'google_calendar_auth_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GoogleCalendarAuthStateTearOff {
  const _$GoogleCalendarAuthStateTearOff();

  _Disconnected disconnected() {
    return const _Disconnected();
  }

  _Connected connected(CalendarApi calendar) {
    return _Connected(
      calendar,
    );
  }

  _Error error(String messgae) {
    return _Error(
      messgae,
    );
  }
}

/// @nodoc
const $GoogleCalendarAuthState = _$GoogleCalendarAuthStateTearOff();

/// @nodoc
mixin _$GoogleCalendarAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(CalendarApi calendar) connected,
    required TResult Function(String messgae) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(CalendarApi calendar)? connected,
    TResult Function(String messgae)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Connected value)? connected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleCalendarAuthStateCopyWith<$Res> {
  factory $GoogleCalendarAuthStateCopyWith(GoogleCalendarAuthState value,
          $Res Function(GoogleCalendarAuthState) then) =
      _$GoogleCalendarAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GoogleCalendarAuthStateCopyWithImpl<$Res>
    implements $GoogleCalendarAuthStateCopyWith<$Res> {
  _$GoogleCalendarAuthStateCopyWithImpl(this._value, this._then);

  final GoogleCalendarAuthState _value;
  // ignore: unused_field
  final $Res Function(GoogleCalendarAuthState) _then;
}

/// @nodoc
abstract class _$DisconnectedCopyWith<$Res> {
  factory _$DisconnectedCopyWith(
          _Disconnected value, $Res Function(_Disconnected) then) =
      __$DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DisconnectedCopyWithImpl<$Res>
    extends _$GoogleCalendarAuthStateCopyWithImpl<$Res>
    implements _$DisconnectedCopyWith<$Res> {
  __$DisconnectedCopyWithImpl(
      _Disconnected _value, $Res Function(_Disconnected) _then)
      : super(_value, (v) => _then(v as _Disconnected));

  @override
  _Disconnected get _value => super._value as _Disconnected;
}

/// @nodoc

class _$_Disconnected implements _Disconnected {
  const _$_Disconnected();

  @override
  String toString() {
    return 'GoogleCalendarAuthState.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(CalendarApi calendar) connected,
    required TResult Function(String messgae) error,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(CalendarApi calendar)? connected,
    TResult Function(String messgae)? error,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Error value) error,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Connected value)? connected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements GoogleCalendarAuthState {
  const factory _Disconnected() = _$_Disconnected;
}

/// @nodoc
abstract class _$ConnectedCopyWith<$Res> {
  factory _$ConnectedCopyWith(
          _Connected value, $Res Function(_Connected) then) =
      __$ConnectedCopyWithImpl<$Res>;
  $Res call({CalendarApi calendar});
}

/// @nodoc
class __$ConnectedCopyWithImpl<$Res>
    extends _$GoogleCalendarAuthStateCopyWithImpl<$Res>
    implements _$ConnectedCopyWith<$Res> {
  __$ConnectedCopyWithImpl(_Connected _value, $Res Function(_Connected) _then)
      : super(_value, (v) => _then(v as _Connected));

  @override
  _Connected get _value => super._value as _Connected;

  @override
  $Res call({
    Object? calendar = freezed,
  }) {
    return _then(_Connected(
      calendar == freezed
          ? _value.calendar
          : calendar // ignore: cast_nullable_to_non_nullable
              as CalendarApi,
    ));
  }
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected(this.calendar);

  @override
  final CalendarApi calendar;

  @override
  String toString() {
    return 'GoogleCalendarAuthState.connected(calendar: $calendar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Connected &&
            (identical(other.calendar, calendar) ||
                const DeepCollectionEquality()
                    .equals(other.calendar, calendar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(calendar);

  @JsonKey(ignore: true)
  @override
  _$ConnectedCopyWith<_Connected> get copyWith =>
      __$ConnectedCopyWithImpl<_Connected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(CalendarApi calendar) connected,
    required TResult Function(String messgae) error,
  }) {
    return connected(calendar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(CalendarApi calendar)? connected,
    TResult Function(String messgae)? error,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(calendar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Error value) error,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Connected value)? connected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements GoogleCalendarAuthState {
  const factory _Connected(CalendarApi calendar) = _$_Connected;

  CalendarApi get calendar => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConnectedCopyWith<_Connected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String messgae});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    extends _$GoogleCalendarAuthStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? messgae = freezed,
  }) {
    return _then(_Error(
      messgae == freezed
          ? _value.messgae
          : messgae // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.messgae);

  @override
  final String messgae;

  @override
  String toString() {
    return 'GoogleCalendarAuthState.error(messgae: $messgae)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.messgae, messgae) ||
                const DeepCollectionEquality().equals(other.messgae, messgae)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(messgae);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() disconnected,
    required TResult Function(CalendarApi calendar) connected,
    required TResult Function(String messgae) error,
  }) {
    return error(messgae);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? disconnected,
    TResult Function(CalendarApi calendar)? connected,
    TResult Function(String messgae)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(messgae);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Connected value)? connected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GoogleCalendarAuthState {
  const factory _Error(String messgae) = _$_Error;

  String get messgae => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
