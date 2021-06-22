import 'package:dartz/dartz.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:domain_design_pattern_flutter/domain/core/value_object_failure.dart';
import 'package:http/http.dart' as http;
/*Either<ValueObjectFailure<String>,String> validateEmail(String input){
  const emailRegex =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if(RegExp(emailRegex).hasMatch(input))
    return right(input);
  else
    return left(ValueObjectFailure.invalidEmail(value: input));
}*/

Either<ValueObjectFailure<String>,String> validatePassword(String input){
  if(input.length>=6)
    return right(input);
  else
    return left(ValueObjectFailure.shortPassword(value: input));
}
Either<ValueObjectFailure<String>,String> validateFullName(String input){
  if(input.length>=5)
    return right(input);
  else
    return left(ValueObjectFailure.invalidFullName(value: input));
}
Either<ValueObjectFailure<String>,String> validateUserName(String input,bool isAvailable){
  if(input.length>4){
    if(isAvailable)
    return right(input);
    else
      return left(ValueObjectFailure.invalidUserName(value: "user name already exists try different one"));

  }
   else
     return left(ValueObjectFailure.invalidUserName(value: "invalid user name either empty or too short"));

}
Either<ValueObjectFailure<String>,String> validatePhoneNumber(PhoneNumber input){
  if(input.phoneNumber!.length>=6)
    return right(input.phoneNumber!);
  else
    return left(ValueObjectFailure.invalidPhoneNumber(value: input.phoneNumber!));
}

