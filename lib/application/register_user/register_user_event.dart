part of 'register_user_bloc.dart';

@freezed
abstract class RegisterUserEvent with _$RegisterUserEvent {
  const factory RegisterUserEvent.fullNameChanged(String fullNameStr) = FullNameChanged;
  const factory RegisterUserEvent.userNameChanged(String userNameStr) = UserNameChanged;
  const factory RegisterUserEvent.passwordChanged(String passwordStr) =
  PasswordChanged;
  const factory RegisterUserEvent.registerWithEmailAndPasswordPressed() =
  RegisterWithEmailAndPasswordPressed;

}
