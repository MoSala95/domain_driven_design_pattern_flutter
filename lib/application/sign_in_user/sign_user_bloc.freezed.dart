// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUserEventTearOff {
  const _$SignUserEventTearOff();

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

  SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const SignInWithEmailAndPasswordPressed();
  }
}

/// @nodoc
const $SignUserEvent = _$SignUserEventTearOff();

/// @nodoc
mixin _$SignUserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userNameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUserEventCopyWith<$Res> {
  factory $SignUserEventCopyWith(
          SignUserEvent value, $Res Function(SignUserEvent) then) =
      _$SignUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUserEventCopyWithImpl<$Res>
    implements $SignUserEventCopyWith<$Res> {
  _$SignUserEventCopyWithImpl(this._value, this._then);

  final SignUserEvent _value;
  // ignore: unused_field
  final $Res Function(SignUserEvent) _then;
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
    extends _$SignUserEventCopyWithImpl<$Res>
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
    return 'SignUserEvent.userNameChanged(userNameStr: $userNameStr)';
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
    required TResult Function(String userNameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) {
    return userNameChanged(userNameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
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
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class UserNameChanged implements SignUserEvent {
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
    extends _$SignUserEventCopyWithImpl<$Res>
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
    return 'SignUserEvent.passwordChanged(passwordStr: $passwordStr)';
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
    required TResult Function(String userNameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
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
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUserEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressedCopyWith(
          SignInWithEmailAndPasswordPressed value,
          $Res Function(SignInWithEmailAndPasswordPressed) then) =
      _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignUserEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressedCopyWithImpl(
      SignInWithEmailAndPasswordPressed _value,
      $Res Function(SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPressed));

  @override
  SignInWithEmailAndPasswordPressed get _value =>
      super._value as SignInWithEmailAndPasswordPressed;
}

/// @nodoc

class _$SignInWithEmailAndPasswordPressed
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignUserEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userNameStr) userNameChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() signInWithEmailAndPasswordPressed,
  }) {
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userNameStr)? userNameChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserNameChanged value) userNameChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserNameChanged value)? userNameChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements SignUserEvent {
  const factory SignInWithEmailAndPasswordPressed() =
      _$SignInWithEmailAndPasswordPressed;
}

/// @nodoc
class _$SignUserStateTearOff {
  const _$SignUserStateTearOff();

  _SignUserState call(
      {required UserName userName,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption}) {
    return _SignUserState(
      userName: userName,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignUserState = _$SignUserStateTearOff();

/// @nodoc
mixin _$SignUserState {
  UserName get userName => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailures, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUserStateCopyWith<SignUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUserStateCopyWith<$Res> {
  factory $SignUserStateCopyWith(
          SignUserState value, $Res Function(SignUserState) then) =
      _$SignUserStateCopyWithImpl<$Res>;
  $Res call(
      {UserName userName,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignUserStateCopyWithImpl<$Res>
    implements $SignUserStateCopyWith<$Res> {
  _$SignUserStateCopyWithImpl(this._value, this._then);

  final SignUserState _value;
  // ignore: unused_field
  final $Res Function(SignUserState) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$SignUserStateCopyWith<$Res>
    implements $SignUserStateCopyWith<$Res> {
  factory _$SignUserStateCopyWith(
          _SignUserState value, $Res Function(_SignUserState) then) =
      __$SignUserStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserName userName,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignUserStateCopyWithImpl<$Res>
    extends _$SignUserStateCopyWithImpl<$Res>
    implements _$SignUserStateCopyWith<$Res> {
  __$SignUserStateCopyWithImpl(
      _SignUserState _value, $Res Function(_SignUserState) _then)
      : super(_value, (v) => _then(v as _SignUserState));

  @override
  _SignUserState get _value => super._value as _SignUserState;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignUserState(
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

class _$_SignUserState implements _SignUserState {
  const _$_SignUserState(
      {required this.userName,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

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
    return 'SignUserState(userName: $userName, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUserState &&
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
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignUserStateCopyWith<_SignUserState> get copyWith =>
      __$SignUserStateCopyWithImpl<_SignUserState>(this, _$identity);
}

abstract class _SignUserState implements SignUserState {
  const factory _SignUserState(
      {required UserName userName,
      required Password password,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<AuthFailures, Unit>>
          authFailureOrSuccessOption}) = _$_SignUserState;

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
  _$SignUserStateCopyWith<_SignUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
