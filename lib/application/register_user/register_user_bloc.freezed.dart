// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterUserEventTearOff {
  const _$RegisterUserEventTearOff();

  FullNameChanged fullNameChanged(String fullNameStr) {
    return FullNameChanged(
      fullNameStr,
    );
  }

  UserNameChanged userNameChanged(String userNameStr) {
    return UserNameChanged(
      userNameStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPasswordPressed();
  }
}

/// @nodoc
const $RegisterUserEvent = _$RegisterUserEventTearOff();

/// @nodoc
mixin _$RegisterUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullNameStr) fullNameChanged,
    required TResult Function(String userNameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String userNameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserEventCopyWith<$Res> {
  factory $RegisterUserEventCopyWith(
          RegisterUserEvent value, $Res Function(RegisterUserEvent) then) =
      _$RegisterUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterUserEventCopyWithImpl<$Res>
    implements $RegisterUserEventCopyWith<$Res> {
  _$RegisterUserEventCopyWithImpl(this._value, this._then);

  final RegisterUserEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterUserEvent) _then;
}

/// @nodoc
abstract class $FullNameChangedCopyWith<$Res> {
  factory $FullNameChangedCopyWith(
          FullNameChanged value, $Res Function(FullNameChanged) then) =
      _$FullNameChangedCopyWithImpl<$Res>;
  $Res call({String fullNameStr});
}

/// @nodoc
class _$FullNameChangedCopyWithImpl<$Res>
    extends _$RegisterUserEventCopyWithImpl<$Res>
    implements $FullNameChangedCopyWith<$Res> {
  _$FullNameChangedCopyWithImpl(
      FullNameChanged _value, $Res Function(FullNameChanged) _then)
      : super(_value, (v) => _then(v as FullNameChanged));

  @override
  FullNameChanged get _value => super._value as FullNameChanged;

  @override
  $Res call({
    Object? fullNameStr = freezed,
  }) {
    return _then(FullNameChanged(
      fullNameStr == freezed
          ? _value.fullNameStr
          : fullNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FullNameChanged implements FullNameChanged {
  const _$FullNameChanged(this.fullNameStr);

  @override
  final String fullNameStr;

  @override
  String toString() {
    return 'RegisterUserEvent.fullNameChanged(fullNameStr: $fullNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FullNameChanged &&
            (identical(other.fullNameStr, fullNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.fullNameStr, fullNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fullNameStr);

  @JsonKey(ignore: true)
  @override
  $FullNameChangedCopyWith<FullNameChanged> get copyWith =>
      _$FullNameChangedCopyWithImpl<FullNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullNameStr) fullNameChanged,
    required TResult Function(String userNameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return fullNameChanged(fullNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String userNameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(fullNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class FullNameChanged implements RegisterUserEvent {
  const factory FullNameChanged(String fullNameStr) = _$FullNameChanged;

  String get fullNameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullNameChangedCopyWith<FullNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameChangedCopyWith<$Res> {
  factory $UserNameChangedCopyWith(
          UserNameChanged value, $Res Function(UserNameChanged) then) =
      _$UserNameChangedCopyWithImpl<$Res>;
  $Res call({String userNameStr});
}

/// @nodoc
class _$UserNameChangedCopyWithImpl<$Res>
    extends _$RegisterUserEventCopyWithImpl<$Res>
    implements $UserNameChangedCopyWith<$Res> {
  _$UserNameChangedCopyWithImpl(
      UserNameChanged _value, $Res Function(UserNameChanged) _then)
      : super(_value, (v) => _then(v as UserNameChanged));

  @override
  UserNameChanged get _value => super._value as UserNameChanged;

  @override
  $Res call({
    Object? userNameStr = freezed,
  }) {
    return _then(UserNameChanged(
      userNameStr == freezed
          ? _value.userNameStr
          : userNameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserNameChanged implements UserNameChanged {
  const _$UserNameChanged(this.userNameStr);

  @override
  final String userNameStr;

  @override
  String toString() {
    return 'RegisterUserEvent.userNameChanged(userNameStr: $userNameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserNameChanged &&
            (identical(other.userNameStr, userNameStr) ||
                const DeepCollectionEquality()
                    .equals(other.userNameStr, userNameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userNameStr);

  @JsonKey(ignore: true)
  @override
  $UserNameChangedCopyWith<UserNameChanged> get copyWith =>
      _$UserNameChangedCopyWithImpl<UserNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullNameStr) fullNameChanged,
    required TResult Function(String userNameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return userNameChanged(userNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String userNameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(userNameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class UserNameChanged implements RegisterUserEvent {
  const factory UserNameChanged(String userNameStr) = _$UserNameChanged;

  String get userNameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNameChangedCopyWith<UserNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterUserEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegisterUserEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullNameStr) fullNameChanged,
    required TResult Function(String userNameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String userNameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterUserEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$RegisterUserEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'RegisterUserEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullNameStr) fullNameChanged,
    required TResult Function(String userNameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullNameStr)? fullNameChanged,
    TResult Function(String userNameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed
    implements RegisterUserEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
class _$RegisterUserStateTearOff {
  const _$RegisterUserStateTearOff();

  _RegisterUserState call(
      {required FullName fullName,
      required UserName userName,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption}) {
    return _RegisterUserState(
      fullName: fullName,
      userName: userName,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RegisterUserState = _$RegisterUserStateTearOff();

/// @nodoc
mixin _$RegisterUserState {
  FullName get fullName => throw _privateConstructorUsedError;
  UserName get userName => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailures, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterUserStateCopyWith<RegisterUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterUserStateCopyWith<$Res> {
  factory $RegisterUserStateCopyWith(
          RegisterUserState value, $Res Function(RegisterUserState) then) =
      _$RegisterUserStateCopyWithImpl<$Res>;
  $Res call(
      {FullName fullName,
      UserName userName,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$RegisterUserStateCopyWithImpl<$Res>
    implements $RegisterUserStateCopyWith<$Res> {
  _$RegisterUserStateCopyWithImpl(this._value, this._then);

  final RegisterUserState _value;
  // ignore: unused_field
  final $Res Function(RegisterUserState) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? userName = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailures, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$RegisterUserStateCopyWith<$Res>
    implements $RegisterUserStateCopyWith<$Res> {
  factory _$RegisterUserStateCopyWith(
          _RegisterUserState value, $Res Function(_RegisterUserState) then) =
      __$RegisterUserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FullName fullName,
      UserName userName,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$RegisterUserStateCopyWithImpl<$Res>
    extends _$RegisterUserStateCopyWithImpl<$Res>
    implements _$RegisterUserStateCopyWith<$Res> {
  __$RegisterUserStateCopyWithImpl(
      _RegisterUserState _value, $Res Function(_RegisterUserState) _then)
      : super(_value, (v) => _then(v as _RegisterUserState));

  @override
  _RegisterUserState get _value => super._value as _RegisterUserState;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? userName = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_RegisterUserState(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as UserName,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$_RegisterUserState implements _RegisterUserState {
  const _$_RegisterUserState(
      {required this.fullName,
      required this.userName,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final FullName fullName;
  @override
  final UserName userName;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterUserState(fullName: $fullName, userName: $userName, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterUserState &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RegisterUserStateCopyWith<_RegisterUserState> get copyWith =>
      __$RegisterUserStateCopyWithImpl<_RegisterUserState>(this, _$identity);
}

abstract class _RegisterUserState implements RegisterUserState {
  const factory _RegisterUserState(
      {required FullName fullName,
      required UserName userName,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailures, Unit>>
          authFailureOrSuccessOption}) = _$_RegisterUserState;

  @override
  FullName get fullName => throw _privateConstructorUsedError;
  @override
  UserName get userName => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailures, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterUserStateCopyWith<_RegisterUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
