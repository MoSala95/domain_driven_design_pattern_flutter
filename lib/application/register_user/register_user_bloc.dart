import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:meta/meta.dart';
import 'package:domain_design_pattern_flutter/domain/auth/I_auth_facade.dart';
import 'package:domain_design_pattern_flutter/domain/auth/auth_failures.dart';
import 'package:domain_design_pattern_flutter/domain/auth/value_objects.dart';
import 'package:domain_design_pattern_flutter/infrastructure/api_routes.dart';
import 'package:domain_design_pattern_flutter/infrastructure/user_auth_facade.dart';
import 'package:http/http.dart' as http;

part 'register_user_event.dart';
part 'register_user_state.dart';
part 'register_user_bloc.freezed.dart';

class RegisterUserBloc extends Bloc<RegisterUserEvent, RegisterUserState> {
  final UserAuthFacade _authFacade;

  RegisterUserBloc(this._authFacade) : super(RegisterUserState.initial());

  @override
  Stream<RegisterUserState> mapEventToState(
    RegisterUserEvent event,
  ) async* {
    // TODO: implement mapEventToState

   yield* event.map(
      fullNameChanged: (e) async* {
        yield state.copyWith(
          fullName: FullName(e.fullNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
     userNameChanged: (e) async* {

       Either<AuthFailures, bool> ?userNameAvailability;
       userNameAvailability=await checkUserNameAvailability(value: e.userNameStr,fieldName: 'username');
       yield userNameAvailability.fold((l) =>  state.copyWith(
            userName:UserName(e.userNameStr,),

           authFailureOrSuccessOption: none(),

        ), (r) => state.copyWith(
          userName:r? UserName(e.userNameStr,):UserName(e.userNameStr,),

          authFailureOrSuccessOption: none(),

        ));

     },

      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.registerWithEmailAndPassword,
        );
      },

    );
  }
  Stream<RegisterUserState> _performActionOnAuthFacadeWithEmailAndPassword(
  Future<Either<AuthFailures, Unit>> Function({
    required FullName fullName,
    required UserName userName,
    required Password password,
  })
  forwardedCall,
  ) async* {
    Either<AuthFailures, Unit> ?failureOrSuccess;

  final isFullNameValid = state.fullName.isValid();
  final isUserNameValid = state.userName.isValid();

  final isPasswordValid = state.password.isValid();

  if (isFullNameValid && isUserNameValid && isPasswordValid) {
  yield state.copyWith(
  isSubmitting: true,
  authFailureOrSuccessOption: none(),
  );

  failureOrSuccess = await forwardedCall(
  fullName: state.fullName,
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

  Future <Either<AuthFailures, bool>>checkUserNameAvailability({String ?value,String? fieldName}) async{
    var url = Uri.parse( ApiRoutes.check_username_availability);
    try {
    final http.Response response= await http
          .post(url,
          headers: {
            "Content-Type": "application/json",
            "Accept":"application/json"
          },
          body: json.encode({
            fieldName: value,
           }));

        Map<String, dynamic> body = json.decode(response.body);

        print("check username success body " + body.toString());
        if (response.statusCode==403) {
          print("user name available ");
          return right(true);

        } else {
          print("user name not available ");
          return right(false);
        }

    }  catch (e) {
      return left(const AuthFailures.unExpectedAuthFailure("unExpected Failure"));
    }
  }
}

