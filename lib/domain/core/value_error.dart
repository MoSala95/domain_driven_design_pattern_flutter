import 'package:domain_design_pattern_flutter/domain/core/value_object_failure.dart';

class UnexpectedValueError extends Error {
  final ValueObjectFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}