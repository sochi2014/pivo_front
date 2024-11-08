// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geopos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Geopos _$GeoposFromJson(Map<String, dynamic> json) {
  return _Geopos.fromJson(json);
}

/// @nodoc
mixin _$Geopos {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this Geopos to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Geopos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeoposCopyWith<Geopos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoposCopyWith<$Res> {
  factory $GeoposCopyWith(Geopos value, $Res Function(Geopos) then) =
      _$GeoposCopyWithImpl<$Res, Geopos>;
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$GeoposCopyWithImpl<$Res, $Val extends Geopos>
    implements $GeoposCopyWith<$Res> {
  _$GeoposCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Geopos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoposImplCopyWith<$Res> implements $GeoposCopyWith<$Res> {
  factory _$$GeoposImplCopyWith(
          _$GeoposImpl value, $Res Function(_$GeoposImpl) then) =
      __$$GeoposImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$$GeoposImplCopyWithImpl<$Res>
    extends _$GeoposCopyWithImpl<$Res, _$GeoposImpl>
    implements _$$GeoposImplCopyWith<$Res> {
  __$$GeoposImplCopyWithImpl(
      _$GeoposImpl _value, $Res Function(_$GeoposImpl) _then)
      : super(_value, _then);

  /// Create a copy of Geopos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$GeoposImpl(
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoposImpl implements _Geopos {
  const _$GeoposImpl({required this.latitude, required this.longitude});

  factory _$GeoposImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoposImplFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'Geopos(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoposImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  /// Create a copy of Geopos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoposImplCopyWith<_$GeoposImpl> get copyWith =>
      __$$GeoposImplCopyWithImpl<_$GeoposImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoposImplToJson(
      this,
    );
  }
}

abstract class _Geopos implements Geopos {
  const factory _Geopos(
      {required final double latitude,
      required final double longitude}) = _$GeoposImpl;

  factory _Geopos.fromJson(Map<String, dynamic> json) = _$GeoposImpl.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of Geopos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoposImplCopyWith<_$GeoposImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
