import 'package:dartz/dartz.dart';
import 'package:domain_design_pattern_flutter/domain/core/value_object_failure.dart';
import 'package:domain_design_pattern_flutter/domain/core/objects_validators.dart';
import 'package:domain_design_pattern_flutter/domain/core/value_object_super_class.dart';

 class FullName extends ValueObjectSuperClass{
  final Either<ValueObjectFailure<String>,String> value;

  factory FullName(String input){
    return FullName._(validateFullName(input),);
  }
  FullName._(this.value);
}

class Password extends ValueObjectSuperClass{
 final Either<ValueObjectFailure<String>,String> value;

 factory Password(String input){
  return Password._(validatePassword(input),);
 }

 Password._(this.value);
}
class UserName extends ValueObjectSuperClass{
 final Either<ValueObjectFailure<String>,String> value;

 factory UserName(String input){
  return UserName._( validateUserName(input),);
 }

 UserName._(this.value);
}

