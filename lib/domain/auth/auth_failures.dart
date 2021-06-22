import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failures.freezed.dart';
@freezed
class AuthFailures with _$AuthFailures{
  const factory AuthFailures.apiFailureMsg(String failureMsg) = _ApiFailureMsg;
  const factory AuthFailures.unExpectedAuthFailure(String failureMsg) = _UnExpectedAuthFailure;

}