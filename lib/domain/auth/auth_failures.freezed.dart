// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailuresTearOff {
  const _$AuthFailuresTearOff();

  _ApiFailureMsg apiFailureMsg(String failureMsg) {
    return _ApiFailureMsg(
      failureMsg,
    );
  }

  _UnExpectedAuthFailure unExpectedAuthFailure(String failureMsg) {
    return _UnExpectedAuthFailure(
      failureMsg,
    );
  }
}

/// @nodoc
const $AuthFailures = _$AuthFailuresTearOff();

/// @nodoc
mixin _$AuthFailures {
  String get failureMsg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMsg) apiFailureMsg,
    required TResult Function(String failureMsg) unExpectedAuthFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMsg)? apiFailureMsg,
    TResult Function(String failureMsg)? unExpectedAuthFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiFailureMsg value) apiFailureMsg,
    required TResult Function(_UnExpectedAuthFailure value)
        unExpectedAuthFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiFailureMsg value)? apiFailureMsg,
    TResult Function(_UnExpectedAuthFailure value)? unExpectedAuthFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFailuresCopyWith<AuthFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailuresCopyWith<$Res> {
  factory $AuthFailuresCopyWith(
          AuthFailures value, $Res Function(AuthFailures) then) =
      _$AuthFailuresCopyWithImpl<$Res>;
  $Res call({String failureMsg});
}

/// @nodoc
class _$AuthFailuresCopyWithImpl<$Res> implements $AuthFailuresCopyWith<$Res> {
  _$AuthFailuresCopyWithImpl(this._value, this._then);

  final AuthFailures _value;
  // ignore: unused_field
  final $Res Function(AuthFailures) _then;

  @override
  $Res call({
    Object? failureMsg = freezed,
  }) {
    return _then(_value.copyWith(
      failureMsg: failureMsg == freezed
          ? _value.failureMsg
          : failureMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApiFailureMsgCopyWith<$Res>
    implements $AuthFailuresCopyWith<$Res> {
  factory _$ApiFailureMsgCopyWith(
          _ApiFailureMsg value, $Res Function(_ApiFailureMsg) then) =
      __$ApiFailureMsgCopyWithImpl<$Res>;
  @override
  $Res call({String failureMsg});
}

/// @nodoc
class __$ApiFailureMsgCopyWithImpl<$Res>
    extends _$AuthFailuresCopyWithImpl<$Res>
    implements _$ApiFailureMsgCopyWith<$Res> {
  __$ApiFailureMsgCopyWithImpl(
      _ApiFailureMsg _value, $Res Function(_ApiFailureMsg) _then)
      : super(_value, (v) => _then(v as _ApiFailureMsg));

  @override
  _ApiFailureMsg get _value => super._value as _ApiFailureMsg;

  @override
  $Res call({
    Object? failureMsg = freezed,
  }) {
    return _then(_ApiFailureMsg(
      failureMsg == freezed
          ? _value.failureMsg
          : failureMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ApiFailureMsg implements _ApiFailureMsg {
  const _$_ApiFailureMsg(this.failureMsg);

  @override
  final String failureMsg;

  @override
  String toString() {
    return 'AuthFailures.apiFailureMsg(failureMsg: $failureMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiFailureMsg &&
            (identical(other.failureMsg, failureMsg) ||
                const DeepCollectionEquality()
                    .equals(other.failureMsg, failureMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureMsg);

  @JsonKey(ignore: true)
  @override
  _$ApiFailureMsgCopyWith<_ApiFailureMsg> get copyWith =>
      __$ApiFailureMsgCopyWithImpl<_ApiFailureMsg>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMsg) apiFailureMsg,
    required TResult Function(String failureMsg) unExpectedAuthFailure,
  }) {
    return apiFailureMsg(failureMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMsg)? apiFailureMsg,
    TResult Function(String failureMsg)? unExpectedAuthFailure,
    required TResult orElse(),
  }) {
    if (apiFailureMsg != null) {
      return apiFailureMsg(failureMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiFailureMsg value) apiFailureMsg,
    required TResult Function(_UnExpectedAuthFailure value)
        unExpectedAuthFailure,
  }) {
    return apiFailureMsg(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiFailureMsg value)? apiFailureMsg,
    TResult Function(_UnExpectedAuthFailure value)? unExpectedAuthFailure,
    required TResult orElse(),
  }) {
    if (apiFailureMsg != null) {
      return apiFailureMsg(this);
    }
    return orElse();
  }
}

abstract class _ApiFailureMsg implements AuthFailures {
  const factory _ApiFailureMsg(String failureMsg) = _$_ApiFailureMsg;

  @override
  String get failureMsg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiFailureMsgCopyWith<_ApiFailureMsg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnExpectedAuthFailureCopyWith<$Res>
    implements $AuthFailuresCopyWith<$Res> {
  factory _$UnExpectedAuthFailureCopyWith(_UnExpectedAuthFailure value,
          $Res Function(_UnExpectedAuthFailure) then) =
      __$UnExpectedAuthFailureCopyWithImpl<$Res>;
  @override
  $Res call({String failureMsg});
}

/// @nodoc
class __$UnExpectedAuthFailureCopyWithImpl<$Res>
    extends _$AuthFailuresCopyWithImpl<$Res>
    implements _$UnExpectedAuthFailureCopyWith<$Res> {
  __$UnExpectedAuthFailureCopyWithImpl(_UnExpectedAuthFailure _value,
      $Res Function(_UnExpectedAuthFailure) _then)
      : super(_value, (v) => _then(v as _UnExpectedAuthFailure));

  @override
  _UnExpectedAuthFailure get _value => super._value as _UnExpectedAuthFailure;

  @override
  $Res call({
    Object? failureMsg = freezed,
  }) {
    return _then(_UnExpectedAuthFailure(
      failureMsg == freezed
          ? _value.failureMsg
          : failureMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnExpectedAuthFailure implements _UnExpectedAuthFailure {
  const _$_UnExpectedAuthFailure(this.failureMsg);

  @override
  final String failureMsg;

  @override
  String toString() {
    return 'AuthFailures.unExpectedAuthFailure(failureMsg: $failureMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnExpectedAuthFailure &&
            (identical(other.failureMsg, failureMsg) ||
                const DeepCollectionEquality()
                    .equals(other.failureMsg, failureMsg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureMsg);

  @JsonKey(ignore: true)
  @override
  _$UnExpectedAuthFailureCopyWith<_UnExpectedAuthFailure> get copyWith =>
      __$UnExpectedAuthFailureCopyWithImpl<_UnExpectedAuthFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failureMsg) apiFailureMsg,
    required TResult Function(String failureMsg) unExpectedAuthFailure,
  }) {
    return unExpectedAuthFailure(failureMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failureMsg)? apiFailureMsg,
    TResult Function(String failureMsg)? unExpectedAuthFailure,
    required TResult orElse(),
  }) {
    if (unExpectedAuthFailure != null) {
      return unExpectedAuthFailure(failureMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiFailureMsg value) apiFailureMsg,
    required TResult Function(_UnExpectedAuthFailure value)
        unExpectedAuthFailure,
  }) {
    return unExpectedAuthFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiFailureMsg value)? apiFailureMsg,
    TResult Function(_UnExpectedAuthFailure value)? unExpectedAuthFailure,
    required TResult orElse(),
  }) {
    if (unExpectedAuthFailure != null) {
      return unExpectedAuthFailure(this);
    }
    return orElse();
  }
}

abstract class _UnExpectedAuthFailure implements AuthFailures {
  const factory _UnExpectedAuthFailure(String failureMsg) =
      _$_UnExpectedAuthFailure;

  @override
  String get failureMsg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnExpectedAuthFailureCopyWith<_UnExpectedAuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
