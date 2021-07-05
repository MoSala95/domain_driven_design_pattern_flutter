part of 'sign_user_bloc.dart';

@freezed
abstract class SignUserState with _$SignUserState {
  const factory SignUserState({
    required UserName userName,
    required Password password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailures, Unit>> authFailureOrSuccessOption,
  }) = _SignUserState;

  factory SignUserState.initial() => SignUserState(
    userName: UserName(''),
    password: Password(''),
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
  );
}

