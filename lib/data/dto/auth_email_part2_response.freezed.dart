// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_email_part2_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthEmailPart2Response _$AuthEmailPart2ResponseFromJson(
    Map<String, dynamic> json) {
  return _AuthEmailPart2Response.fromJson(json);
}

/// @nodoc
mixin _$AuthEmailPart2Response {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this AuthEmailPart2Response to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthEmailPart2Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthEmailPart2ResponseCopyWith<AuthEmailPart2Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEmailPart2ResponseCopyWith<$Res> {
  factory $AuthEmailPart2ResponseCopyWith(AuthEmailPart2Response value,
          $Res Function(AuthEmailPart2Response) then) =
      _$AuthEmailPart2ResponseCopyWithImpl<$Res, AuthEmailPart2Response>;
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$AuthEmailPart2ResponseCopyWithImpl<$Res,
        $Val extends AuthEmailPart2Response>
    implements $AuthEmailPart2ResponseCopyWith<$Res> {
  _$AuthEmailPart2ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEmailPart2Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthEmailPart2ResponseImplCopyWith<$Res>
    implements $AuthEmailPart2ResponseCopyWith<$Res> {
  factory _$$AuthEmailPart2ResponseImplCopyWith(
          _$AuthEmailPart2ResponseImpl value,
          $Res Function(_$AuthEmailPart2ResponseImpl) then) =
      __$$AuthEmailPart2ResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$AuthEmailPart2ResponseImplCopyWithImpl<$Res>
    extends _$AuthEmailPart2ResponseCopyWithImpl<$Res,
        _$AuthEmailPart2ResponseImpl>
    implements _$$AuthEmailPart2ResponseImplCopyWith<$Res> {
  __$$AuthEmailPart2ResponseImplCopyWithImpl(
      _$AuthEmailPart2ResponseImpl _value,
      $Res Function(_$AuthEmailPart2ResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEmailPart2Response
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$AuthEmailPart2ResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthEmailPart2ResponseImpl implements _AuthEmailPart2Response {
  const _$AuthEmailPart2ResponseImpl(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$AuthEmailPart2ResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthEmailPart2ResponseImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'AuthEmailPart2Response(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEmailPart2ResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of AuthEmailPart2Response
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEmailPart2ResponseImplCopyWith<_$AuthEmailPart2ResponseImpl>
      get copyWith => __$$AuthEmailPart2ResponseImplCopyWithImpl<
          _$AuthEmailPart2ResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthEmailPart2ResponseImplToJson(
      this,
    );
  }
}

abstract class _AuthEmailPart2Response implements AuthEmailPart2Response {
  const factory _AuthEmailPart2Response(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$AuthEmailPart2ResponseImpl;

  factory _AuthEmailPart2Response.fromJson(Map<String, dynamic> json) =
      _$AuthEmailPart2ResponseImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Create a copy of AuthEmailPart2Response
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthEmailPart2ResponseImplCopyWith<_$AuthEmailPart2ResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
