// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'value_object_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueObjectFailureTearOff {
  const _$ValueObjectFailureTearOff();

  _InvalidUserName<T> invalidUserName<T>({required T value}) {
    return _InvalidUserName<T>(
      value: value,
    );
  }

  _InvalidFullName<T> invalidFullName<T>({required T value}) {
    return _InvalidFullName<T>(
      value: value,
    );
  }

  _InvalidPhoneNumber<T> invalidPhoneNumber<T>({required T value}) {
    return _InvalidPhoneNumber<T>(
      value: value,
    );
  }

  _InvalidPhoneCode<T> invalidPhoneCode<T>({required T value}) {
    return _InvalidPhoneCode<T>(
      value: value,
    );
  }

  _ShortPassword<T> shortPassword<T>({required T value}) {
    return _ShortPassword<T>(
      value: value,
    );
  }
}

/// @nodoc
const $ValueObjectFailure = _$ValueObjectFailureTearOff();

/// @nodoc
mixin _$ValueObjectFailure<T> {
  T get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) invalidUserName,
    required TResult Function(T value) invalidFullName,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function(T value) invalidPhoneCode,
    required TResult Function(T value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? invalidUserName,
    TResult Function(T value)? invalidFullName,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function(T value)? invalidPhoneCode,
    TResult Function(T value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUserName<T> value) invalidUserName,
    required TResult Function(_InvalidFullName<T> value) invalidFullName,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidPhoneCode<T> value) invalidPhoneCode,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUserName<T> value)? invalidUserName,
    TResult Function(_InvalidFullName<T> value)? invalidFullName,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidPhoneCode<T> value)? invalidPhoneCode,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueObjectFailureCopyWith<T, ValueObjectFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueObjectFailureCopyWith<T, $Res> {
  factory $ValueObjectFailureCopyWith(ValueObjectFailure<T> value,
          $Res Function(ValueObjectFailure<T>) then) =
      _$ValueObjectFailureCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class _$ValueObjectFailureCopyWithImpl<T, $Res>
    implements $ValueObjectFailureCopyWith<T, $Res> {
  _$ValueObjectFailureCopyWithImpl(this._value, this._then);

  final ValueObjectFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueObjectFailure<T>) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class _$InvalidUserNameCopyWith<T, $Res>
    implements $ValueObjectFailureCopyWith<T, $Res> {
  factory _$InvalidUserNameCopyWith(
          _InvalidUserName<T> value, $Res Function(_InvalidUserName<T>) then) =
      __$InvalidUserNameCopyWithImpl<T, $Res>;
  @override
  $Res call({T value});
}

/// @nodoc
class __$InvalidUserNameCopyWithImpl<T, $Res>
    extends _$ValueObjectFailureCopyWithImpl<T, $Res>
    implements _$InvalidUserNameCopyWith<T, $Res> {
  __$InvalidUserNameCopyWithImpl(
      _InvalidUserName<T> _value, $Res Function(_InvalidUserName<T>) _then)
      : super(_value, (v) => _then(v as _InvalidUserName<T>));

  @override
  _InvalidUserName<T> get _value => super._value as _InvalidUserName<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_InvalidUserName<T>(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidUserName<T> implements _InvalidUserName<T> {
  const _$_InvalidUserName({required this.value});

  @override
  final T value;

  @override
  String toString() {
    return 'ValueObjectFailure<$T>.invalidUserName(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidUserName<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$InvalidUserNameCopyWith<T, _InvalidUserName<T>> get copyWith =>
      __$InvalidUserNameCopyWithImpl<T, _InvalidUserName<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) invalidUserName,
    required TResult Function(T value) invalidFullName,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function(T value) invalidPhoneCode,
    required TResult Function(T value) shortPassword,
  }) {
    return invalidUserName(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? invalidUserName,
    TResult Function(T value)? invalidFullName,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function(T value)? invalidPhoneCode,
    TResult Function(T value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidUserName != null) {
      return invalidUserName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUserName<T> value) invalidUserName,
    required TResult Function(_InvalidFullName<T> value) invalidFullName,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidPhoneCode<T> value) invalidPhoneCode,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) {
    return invalidUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUserName<T> value)? invalidUserName,
    TResult Function(_InvalidFullName<T> value)? invalidFullName,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidPhoneCode<T> value)? invalidPhoneCode,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidUserName != null) {
      return invalidUserName(this);
    }
    return orElse();
  }
}

abstract class _InvalidUserName<T> implements ValueObjectFailure<T> {
  const factory _InvalidUserName({required T value}) = _$_InvalidUserName<T>;

  @override
  T get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidUserNameCopyWith<T, _InvalidUserName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidFullNameCopyWith<T, $Res>
    implements $ValueObjectFailureCopyWith<T, $Res> {
  factory _$InvalidFullNameCopyWith(
          _InvalidFullName<T> value, $Res Function(_InvalidFullName<T>) then) =
      __$InvalidFullNameCopyWithImpl<T, $Res>;
  @override
  $Res call({T value});
}

/// @nodoc
class __$InvalidFullNameCopyWithImpl<T, $Res>
    extends _$ValueObjectFailureCopyWithImpl<T, $Res>
    implements _$InvalidFullNameCopyWith<T, $Res> {
  __$InvalidFullNameCopyWithImpl(
      _InvalidFullName<T> _value, $Res Function(_InvalidFullName<T>) _then)
      : super(_value, (v) => _then(v as _InvalidFullName<T>));

  @override
  _InvalidFullName<T> get _value => super._value as _InvalidFullName<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_InvalidFullName<T>(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidFullName<T> implements _InvalidFullName<T> {
  const _$_InvalidFullName({required this.value});

  @override
  final T value;

  @override
  String toString() {
    return 'ValueObjectFailure<$T>.invalidFullName(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidFullName<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$InvalidFullNameCopyWith<T, _InvalidFullName<T>> get copyWith =>
      __$InvalidFullNameCopyWithImpl<T, _InvalidFullName<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) invalidUserName,
    required TResult Function(T value) invalidFullName,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function(T value) invalidPhoneCode,
    required TResult Function(T value) shortPassword,
  }) {
    return invalidFullName(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? invalidUserName,
    TResult Function(T value)? invalidFullName,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function(T value)? invalidPhoneCode,
    TResult Function(T value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidFullName != null) {
      return invalidFullName(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUserName<T> value) invalidUserName,
    required TResult Function(_InvalidFullName<T> value) invalidFullName,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidPhoneCode<T> value) invalidPhoneCode,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) {
    return invalidFullName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUserName<T> value)? invalidUserName,
    TResult Function(_InvalidFullName<T> value)? invalidFullName,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidPhoneCode<T> value)? invalidPhoneCode,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidFullName != null) {
      return invalidFullName(this);
    }
    return orElse();
  }
}

abstract class _InvalidFullName<T> implements ValueObjectFailure<T> {
  const factory _InvalidFullName({required T value}) = _$_InvalidFullName<T>;

  @override
  T get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidFullNameCopyWith<T, _InvalidFullName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidPhoneNumberCopyWith<T, $Res>
    implements $ValueObjectFailureCopyWith<T, $Res> {
  factory _$InvalidPhoneNumberCopyWith(_InvalidPhoneNumber<T> value,
          $Res Function(_InvalidPhoneNumber<T>) then) =
      __$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T value});
}

/// @nodoc
class __$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueObjectFailureCopyWithImpl<T, $Res>
    implements _$InvalidPhoneNumberCopyWith<T, $Res> {
  __$InvalidPhoneNumberCopyWithImpl(_InvalidPhoneNumber<T> _value,
      $Res Function(_InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPhoneNumber<T>));

  @override
  _InvalidPhoneNumber<T> get _value => super._value as _InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_InvalidPhoneNumber<T>(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidPhoneNumber<T> implements _InvalidPhoneNumber<T> {
  const _$_InvalidPhoneNumber({required this.value});

  @override
  final T value;

  @override
  String toString() {
    return 'ValueObjectFailure<$T>.invalidPhoneNumber(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPhoneNumber<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$InvalidPhoneNumberCopyWith<T, _InvalidPhoneNumber<T>> get copyWith =>
      __$InvalidPhoneNumberCopyWithImpl<T, _InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) invalidUserName,
    required TResult Function(T value) invalidFullName,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function(T value) invalidPhoneCode,
    required TResult Function(T value) shortPassword,
  }) {
    return invalidPhoneNumber(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? invalidUserName,
    TResult Function(T value)? invalidFullName,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function(T value)? invalidPhoneCode,
    TResult Function(T value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUserName<T> value) invalidUserName,
    required TResult Function(_InvalidFullName<T> value) invalidFullName,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidPhoneCode<T> value) invalidPhoneCode,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUserName<T> value)? invalidUserName,
    TResult Function(_InvalidFullName<T> value)? invalidFullName,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidPhoneCode<T> value)? invalidPhoneCode,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneNumber<T> implements ValueObjectFailure<T> {
  const factory _InvalidPhoneNumber({required T value}) =
      _$_InvalidPhoneNumber<T>;

  @override
  T get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidPhoneNumberCopyWith<T, _InvalidPhoneNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidPhoneCodeCopyWith<T, $Res>
    implements $ValueObjectFailureCopyWith<T, $Res> {
  factory _$InvalidPhoneCodeCopyWith(_InvalidPhoneCode<T> value,
          $Res Function(_InvalidPhoneCode<T>) then) =
      __$InvalidPhoneCodeCopyWithImpl<T, $Res>;
  @override
  $Res call({T value});
}

/// @nodoc
class __$InvalidPhoneCodeCopyWithImpl<T, $Res>
    extends _$ValueObjectFailureCopyWithImpl<T, $Res>
    implements _$InvalidPhoneCodeCopyWith<T, $Res> {
  __$InvalidPhoneCodeCopyWithImpl(
      _InvalidPhoneCode<T> _value, $Res Function(_InvalidPhoneCode<T>) _then)
      : super(_value, (v) => _then(v as _InvalidPhoneCode<T>));

  @override
  _InvalidPhoneCode<T> get _value => super._value as _InvalidPhoneCode<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_InvalidPhoneCode<T>(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_InvalidPhoneCode<T> implements _InvalidPhoneCode<T> {
  const _$_InvalidPhoneCode({required this.value});

  @override
  final T value;

  @override
  String toString() {
    return 'ValueObjectFailure<$T>.invalidPhoneCode(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPhoneCode<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$InvalidPhoneCodeCopyWith<T, _InvalidPhoneCode<T>> get copyWith =>
      __$InvalidPhoneCodeCopyWithImpl<T, _InvalidPhoneCode<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) invalidUserName,
    required TResult Function(T value) invalidFullName,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function(T value) invalidPhoneCode,
    required TResult Function(T value) shortPassword,
  }) {
    return invalidPhoneCode(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? invalidUserName,
    TResult Function(T value)? invalidFullName,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function(T value)? invalidPhoneCode,
    TResult Function(T value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidPhoneCode != null) {
      return invalidPhoneCode(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUserName<T> value) invalidUserName,
    required TResult Function(_InvalidFullName<T> value) invalidFullName,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidPhoneCode<T> value) invalidPhoneCode,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) {
    return invalidPhoneCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUserName<T> value)? invalidUserName,
    TResult Function(_InvalidFullName<T> value)? invalidFullName,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidPhoneCode<T> value)? invalidPhoneCode,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (invalidPhoneCode != null) {
      return invalidPhoneCode(this);
    }
    return orElse();
  }
}

abstract class _InvalidPhoneCode<T> implements ValueObjectFailure<T> {
  const factory _InvalidPhoneCode({required T value}) = _$_InvalidPhoneCode<T>;

  @override
  T get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidPhoneCodeCopyWith<T, _InvalidPhoneCode<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShortPasswordCopyWith<T, $Res>
    implements $ValueObjectFailureCopyWith<T, $Res> {
  factory _$ShortPasswordCopyWith(
          _ShortPassword<T> value, $Res Function(_ShortPassword<T>) then) =
      __$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T value});
}

/// @nodoc
class __$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueObjectFailureCopyWithImpl<T, $Res>
    implements _$ShortPasswordCopyWith<T, $Res> {
  __$ShortPasswordCopyWithImpl(
      _ShortPassword<T> _value, $Res Function(_ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _ShortPassword<T>));

  @override
  _ShortPassword<T> get _value => super._value as _ShortPassword<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ShortPassword<T>(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_ShortPassword<T> implements _ShortPassword<T> {
  const _$_ShortPassword({required this.value});

  @override
  final T value;

  @override
  String toString() {
    return 'ValueObjectFailure<$T>.shortPassword(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortPassword<T> &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      __$ShortPasswordCopyWithImpl<T, _ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) invalidUserName,
    required TResult Function(T value) invalidFullName,
    required TResult Function(T value) invalidPhoneNumber,
    required TResult Function(T value) invalidPhoneCode,
    required TResult Function(T value) shortPassword,
  }) {
    return shortPassword(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? invalidUserName,
    TResult Function(T value)? invalidFullName,
    TResult Function(T value)? invalidPhoneNumber,
    TResult Function(T value)? invalidPhoneCode,
    TResult Function(T value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUserName<T> value) invalidUserName,
    required TResult Function(_InvalidFullName<T> value) invalidFullName,
    required TResult Function(_InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(_InvalidPhoneCode<T> value) invalidPhoneCode,
    required TResult Function(_ShortPassword<T> value) shortPassword,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUserName<T> value)? invalidUserName,
    TResult Function(_InvalidFullName<T> value)? invalidFullName,
    TResult Function(_InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(_InvalidPhoneCode<T> value)? invalidPhoneCode,
    TResult Function(_ShortPassword<T> value)? shortPassword,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class _ShortPassword<T> implements ValueObjectFailure<T> {
  const factory _ShortPassword({required T value}) = _$_ShortPassword<T>;

  @override
  T get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShortPasswordCopyWith<T, _ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
