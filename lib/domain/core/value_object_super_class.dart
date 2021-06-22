import 'package:dartz/dartz.dart';
import 'package:domain_design_pattern_flutter/domain/core/value_error.dart';

import 'value_object_failure.dart';

abstract class ValueObjectSuperClass<T>  {
   const ValueObjectSuperClass();
   Either<ValueObjectFailure<T>,T> get value;
   bool isValid() => value.isRight();
   T getOrCrash() {
      // id = identity - same as writing (right) => right
      return value.fold((f) => throw UnexpectedValueError(f), id);
   }

   @override
   bool operator ==(Object o) {
      if (identical(this, o)) return true;

      return o is ValueObjectSuperClass<T> && o.value == value;
   }

   @override
   int get hashCode => value.hashCode;

   @override
   String toString() => 'Value($value)';
}