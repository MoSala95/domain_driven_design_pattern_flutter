import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:domain_design_pattern_flutter/domain/auth/I_auth_facade.dart';
import 'package:domain_design_pattern_flutter/domain/auth/auth_failures.dart';
import 'package:domain_design_pattern_flutter/domain/auth/value_objects.dart';
import 'package:domain_design_pattern_flutter/infrastructure/user_auth_facade.dart';

part 'sign_user_event.dart';
part 'sign_user_state.dart';
part 'sign_user_bloc.freezed.dart';

class SignUserBloc extends Bloc<SignUserEvent, SignUserState> {
  final UserAuthFacade _authFacade;

  SignUserBloc(this._authFacade) : super(SignUserState.initial());

  @override
  Stream<SignUserState> mapEventToState(
    SignUserEvent event,
  ) async* {
    // TODO: implement mapEventToState

   yield* event.map(
      userNameChanged: (e) async* {
        yield state.copyWith(
          userName: UserName(e.userNameStr,true),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithUserNameAndPassword,
        );
      },

    );
  }
  Stream<SignUserState> _performActionOnAuthFacadeWithEmailAndPassword(
  Future<Either<AuthFailures, Unit>> Function({
    required UserName userName,
    required Password password,
  })
  forwardedCall,
  ) async* {
   Either<AuthFailures, Unit>? failureOrSuccess;

  final isUserNameValid = state.userName.isValid();
  final isPasswordValid = state.password.isValid();

  if (isUserNameValid && isPasswordValid) {
  yield state.copyWith(
  isSubmitting: true,
  authFailureOrSuccessOption: none(),
  );

  failureOrSuccess = await forwardedCall(
  userName: state.userName,
  password: state.password,
  );
  }

  yield state.copyWith(
  isSubmitting: false,
  showErrorMessages: true,
  authFailureOrSuccessOption: optionOf(failureOrSuccess),
  );
  }
}

