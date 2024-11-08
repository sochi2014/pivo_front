// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geopos_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeoposMember _$GeoposMemberFromJson(Map<String, dynamic> json) {
  return _GeoposMember.fromJson(json);
}

/// @nodoc
mixin _$GeoposMember {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this GeoposMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeoposMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoposMemberCopyWith<GeoposMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoposMemberCopyWith<$Res> {
  factory $GeoposMemberCopyWith(
          GeoposMember value, $Res Function(GeoposMember) then) =
      _$GeoposMemberCopyWithImpl<$Res, GeoposMember>;
  @useResult
  $Res call(
      {int id,
      String name,
      double latitude,
      double longitude,
      @JsonKey(name: 'phone_number') String? phoneNumber});
}

/// @nodoc
class _$GeoposMemberCopyWithImpl<$Res, $Val extends GeoposMember>
    implements $GeoposMemberCopyWith<$Res> {
  _$GeoposMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeoposMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoposMemberImplCopyWith<$Res>
    implements $GeoposMemberCopyWith<$Res> {
  factory _$$GeoposMemberImplCopyWith(
          _$GeoposMemberImpl value, $Res Function(_$GeoposMemberImpl) then) =
      __$$GeoposMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      double latitude,
      double longitude,
      @JsonKey(name: 'phone_number') String? phoneNumber});
}

/// @nodoc
class __$$GeoposMemberImplCopyWithImpl<$Res>
    extends _$GeoposMemberCopyWithImpl<$Res, _$GeoposMemberImpl>
    implements _$$GeoposMemberImplCopyWith<$Res> {
  __$$GeoposMemberImplCopyWithImpl(
      _$GeoposMemberImpl _value, $Res Function(_$GeoposMemberImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeoposMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$GeoposMemberImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoposMemberImpl implements _GeoposMember {
  const _$GeoposMemberImpl(
      {required this.id,
      required this.name,
      required this.latitude,
      required this.longitude,
      @JsonKey(name: 'phone_number') this.phoneNumber});

  factory _$GeoposMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoposMemberImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;

  @override
  String toString() {
    return 'GeoposMember(id: $id, name: $name, latitude: $latitude, longitude: $longitude, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoposMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, latitude, longitude, phoneNumber);

  /// Create a copy of GeoposMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoposMemberImplCopyWith<_$GeoposMemberImpl> get copyWith =>
      __$$GeoposMemberImplCopyWithImpl<_$GeoposMemberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoposMemberImplToJson(
      this,
    );
  }
}

abstract class _GeoposMember implements GeoposMember {
  const factory _GeoposMember(
          {required final int id,
          required final String name,
          required final double latitude,
          required final double longitude,
          @JsonKey(name: 'phone_number') final String? phoneNumber}) =
      _$GeoposMemberImpl;

  factory _GeoposMember.fromJson(Map<String, dynamic> json) =
      _$GeoposMemberImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;

  /// Create a copy of GeoposMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoposMemberImplCopyWith<_$GeoposMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
