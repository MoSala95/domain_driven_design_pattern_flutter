
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:domain_design_pattern_flutter/infrastructure/models/user_with_token.dart';

import 'auth_failures.dart';
import 'value_objects.dart';

abstract class AuthFacade{
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword({
    required FullName fullName,
    required Password password,
    required UserName userName,
    });
  Future<Either<AuthFailures, Unit>> signInWithUserNameAndPassword({
    required UserName userName,
    required Password password,
  });
  Future<Option<UserModelWithToken>> getSignedInUser();
  Future<void> signOut();

}