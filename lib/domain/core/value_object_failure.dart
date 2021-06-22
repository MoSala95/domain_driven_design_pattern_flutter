import 'package:freezed_annotation/freezed_annotation.dart';
part"value_object_failure.freezed.dart";

@freezed
 class ValueObjectFailure<T> with _$ValueObjectFailure<T> {
   const factory ValueObjectFailure.invalidUserName({required T value}) = _InvalidUserName<T>;
   const factory ValueObjectFailure.invalidFullName({required T value}) = _InvalidFullName<T>;
   const factory ValueObjectFailure.invalidPhoneNumber({required T value}) = _InvalidPhoneNumber<T>;
   const factory ValueObjectFailure.invalidPhoneCode({required T value}) = _InvalidPhoneCode<T>;

   const factory ValueObjectFailure.shortPassword({required T value}) = _ShortPassword<T>;
}