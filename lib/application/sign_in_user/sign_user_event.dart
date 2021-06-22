part of 'sign_user_bloc.dart';

@freezed
abstract class SignUserEvent with _$SignUserEvent {
  const factory SignUserEvent.userNameChanged(String userNameStr) = UserNameChanged;
  const factory SignUserEvent.passwordChanged(String passwordStr) =
  PasswordChanged;
  const factory SignUserEvent.signInWithEmailAndPasswordPressed() =
  SignInWithEmailAndPasswordPressed;
}
