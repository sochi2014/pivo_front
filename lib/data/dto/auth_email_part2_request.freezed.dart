// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_email_part2_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthEmailPart2Request _$AuthEmailPart2RequestFromJson(
    Map<String, dynamic> json) {
  return _AuthEmailPart2Request.fromJson(json);
}

/// @nodoc
mixin _$AuthEmailPart2Request {
  String get email => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this AuthEmailPart2Request to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthEmailPart2Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthEmailPart2RequestCopyWith<AuthEmailPart2Request> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEmailPart2RequestCopyWith<$Res> {
  factory $AuthEmailPart2RequestCopyWith(AuthEmailPart2Request value,
          $Res Function(AuthEmailPart2Request) then) =
      _$AuthEmailPart2RequestCopyWithImpl<$Res, AuthEmailPart2Request>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class _$AuthEmailPart2RequestCopyWithImpl<$Res,
        $Val extends AuthEmailPart2Request>
    implements $AuthEmailPart2RequestCopyWith<$Res> {
  _$AuthEmailPart2RequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEmailPart2Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthEmailPart2RequestImplCopyWith<$Res>
    implements $AuthEmailPart2RequestCopyWith<$Res> {
  factory _$$AuthEmailPart2RequestImplCopyWith(
          _$AuthEmailPart2RequestImpl value,
          $Res Function(_$AuthEmailPart2RequestImpl) then) =
      __$$AuthEmailPart2RequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$AuthEmailPart2RequestImplCopyWithImpl<$Res>
    extends _$AuthEmailPart2RequestCopyWithImpl<$Res,
        _$AuthEmailPart2RequestImpl>
    implements _$$AuthEmailPart2RequestImplCopyWith<$Res> {
  __$$AuthEmailPart2RequestImplCopyWithImpl(_$AuthEmailPart2RequestImpl _value,
      $Res Function(_$AuthEmailPart2RequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEmailPart2Request
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$AuthEmailPart2RequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthEmailPart2RequestImpl implements _AuthEmailPart2Request {
  const _$AuthEmailPart2RequestImpl({required this.email, required this.code});

  factory _$AuthEmailPart2RequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthEmailPart2RequestImplFromJson(json);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthEmailPart2Request(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEmailPart2RequestImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  /// Create a copy of AuthEmailPart2Request
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEmailPart2RequestImplCopyWith<_$AuthEmailPart2RequestImpl>
      get copyWith => __$$AuthEmailPart2RequestImplCopyWithImpl<
          _$AuthEmailPart2RequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthEmailPart2RequestImplToJson(
      this,
    );
  }
}

abstract class _AuthEmailPart2Request implements AuthEmailPart2Request {
  const factory _AuthEmailPart2Request(
      {required final String email,
      required final String code}) = _$AuthEmailPart2RequestImpl;

  factory _AuthEmailPart2Request.fromJson(Map<String, dynamic> json) =
      _$AuthEmailPart2RequestImpl.fromJson;

  @override
  String get email;
  @override
  String get code;

  /// Create a copy of AuthEmailPart2Request
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEmailPart2RequestImplCopyWith<_$AuthEmailPart2RequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
