part of 'register_user_bloc.dart';

@freezed
abstract class RegisterUserState with _$RegisterUserState {
  const factory RegisterUserState({
    required FullName fullName,
    required UserName userName,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption,
  }) = _RegisterUserState;

  factory RegisterUserState.initial() => RegisterUserState(
    fullName: FullName(""),
    userName: UserName(""),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
  );
}

