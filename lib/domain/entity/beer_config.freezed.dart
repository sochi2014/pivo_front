// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beer_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeerConfig _$BeerConfigFromJson(Map<String, dynamic> json) {
  return _BeerConfig.fromJson(json);
}

/// @nodoc
mixin _$BeerConfig {
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_alc')
  double? get minAlc => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_alc')
  double? get maxAlc => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_ibu')
  double? get minIbu => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_ibu')
  double? get maxIbu => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_og')
  double? get minOg => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_og')
  double? get maxOg => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_fg')
  double? get minFg => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_fg')
  double? get maxFg => throw _privateConstructorUsedError;
  @JsonKey(name: 'offset')
  int? get offset => throw _privateConstructorUsedError;
  @JsonKey(name: 'limit')
  int? get limit => throw _privateConstructorUsedError;

  /// Serializes this BeerConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BeerConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeerConfigCopyWith<BeerConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerConfigCopyWith<$Res> {
  factory $BeerConfigCopyWith(
          BeerConfig value, $Res Function(BeerConfig) then) =
      _$BeerConfigCopyWithImpl<$Res, BeerConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'min_alc') double? minAlc,
      @JsonKey(name: 'max_alc') double? maxAlc,
      @JsonKey(name: 'min_ibu') double? minIbu,
      @JsonKey(name: 'max_ibu') double? maxIbu,
      @JsonKey(name: 'min_og') double? minOg,
      @JsonKey(name: 'max_og') double? maxOg,
      @JsonKey(name: 'min_fg') double? minFg,
      @JsonKey(name: 'max_fg') double? maxFg,
      @JsonKey(name: 'offset') int? offset,
      @JsonKey(name: 'limit') int? limit});
}

/// @nodoc
class _$BeerConfigCopyWithImpl<$Res, $Val extends BeerConfig>
    implements $BeerConfigCopyWith<$Res> {
  _$BeerConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeerConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? color = freezed,
    Object? minAlc = freezed,
    Object? maxAlc = freezed,
    Object? minIbu = freezed,
    Object? maxIbu = freezed,
    Object? minOg = freezed,
    Object? maxOg = freezed,
    Object? minFg = freezed,
    Object? maxFg = freezed,
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      minAlc: freezed == minAlc
          ? _value.minAlc
          : minAlc // ignore: cast_nullable_to_non_nullable
              as double?,
      maxAlc: freezed == maxAlc
          ? _value.maxAlc
          : maxAlc // ignore: cast_nullable_to_non_nullable
              as double?,
      minIbu: freezed == minIbu
          ? _value.minIbu
          : minIbu // ignore: cast_nullable_to_non_nullable
              as double?,
      maxIbu: freezed == maxIbu
          ? _value.maxIbu
          : maxIbu // ignore: cast_nullable_to_non_nullable
              as double?,
      minOg: freezed == minOg
          ? _value.minOg
          : minOg // ignore: cast_nullable_to_non_nullable
              as double?,
      maxOg: freezed == maxOg
          ? _value.maxOg
          : maxOg // ignore: cast_nullable_to_non_nullable
              as double?,
      minFg: freezed == minFg
          ? _value.minFg
          : minFg // ignore: cast_nullable_to_non_nullable
              as double?,
      maxFg: freezed == maxFg
          ? _value.maxFg
          : maxFg // ignore: cast_nullable_to_non_nullable
              as double?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeerConfigImplCopyWith<$Res>
    implements $BeerConfigCopyWith<$Res> {
  factory _$$BeerConfigImplCopyWith(
          _$BeerConfigImpl value, $Res Function(_$BeerConfigImpl) then) =
      __$$BeerConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String? type,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'min_alc') double? minAlc,
      @JsonKey(name: 'max_alc') double? maxAlc,
      @JsonKey(name: 'min_ibu') double? minIbu,
      @JsonKey(name: 'max_ibu') double? maxIbu,
      @JsonKey(name: 'min_og') double? minOg,
      @JsonKey(name: 'max_og') double? maxOg,
      @JsonKey(name: 'min_fg') double? minFg,
      @JsonKey(name: 'max_fg') double? maxFg,
      @JsonKey(name: 'offset') int? offset,
      @JsonKey(name: 'limit') int? limit});
}

/// @nodoc
class __$$BeerConfigImplCopyWithImpl<$Res>
    extends _$BeerConfigCopyWithImpl<$Res, _$BeerConfigImpl>
    implements _$$BeerConfigImplCopyWith<$Res> {
  __$$BeerConfigImplCopyWithImpl(
      _$BeerConfigImpl _value, $Res Function(_$BeerConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeerConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? color = freezed,
    Object? minAlc = freezed,
    Object? maxAlc = freezed,
    Object? minIbu = freezed,
    Object? maxIbu = freezed,
    Object? minOg = freezed,
    Object? maxOg = freezed,
    Object? minFg = freezed,
    Object? maxFg = freezed,
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$BeerConfigImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      minAlc: freezed == minAlc
          ? _value.minAlc
          : minAlc // ignore: cast_nullable_to_non_nullable
              as double?,
      maxAlc: freezed == maxAlc
          ? _value.maxAlc
          : maxAlc // ignore: cast_nullable_to_non_nullable
              as double?,
      minIbu: freezed == minIbu
          ? _value.minIbu
          : minIbu // ignore: cast_nullable_to_non_nullable
              as double?,
      maxIbu: freezed == maxIbu
          ? _value.maxIbu
          : maxIbu // ignore: cast_nullable_to_non_nullable
              as double?,
      minOg: freezed == minOg
          ? _value.minOg
          : minOg // ignore: cast_nullable_to_non_nullable
              as double?,
      maxOg: freezed == maxOg
          ? _value.maxOg
          : maxOg // ignore: cast_nullable_to_non_nullable
              as double?,
      minFg: freezed == minFg
          ? _value.minFg
          : minFg // ignore: cast_nullable_to_non_nullable
              as double?,
      maxFg: freezed == maxFg
          ? _value.maxFg
          : maxFg // ignore: cast_nullable_to_non_nullable
              as double?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$BeerConfigImpl implements _BeerConfig {
  const _$BeerConfigImpl(
      {@JsonKey(name: 'type') this.type,
      @JsonKey(name: 'color') this.color,
      @JsonKey(name: 'min_alc') this.minAlc,
      @JsonKey(name: 'max_alc') this.maxAlc,
      @JsonKey(name: 'min_ibu') this.minIbu,
      @JsonKey(name: 'max_ibu') this.maxIbu,
      @JsonKey(name: 'min_og') this.minOg,
      @JsonKey(name: 'max_og') this.maxOg,
      @JsonKey(name: 'min_fg') this.minFg,
      @JsonKey(name: 'max_fg') this.maxFg,
      @JsonKey(name: 'offset') this.offset,
      @JsonKey(name: 'limit') this.limit});

  factory _$BeerConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeerConfigImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'color')
  final String? color;
  @override
  @JsonKey(name: 'min_alc')
  final double? minAlc;
  @override
  @JsonKey(name: 'max_alc')
  final double? maxAlc;
  @override
  @JsonKey(name: 'min_ibu')
  final double? minIbu;
  @override
  @JsonKey(name: 'max_ibu')
  final double? maxIbu;
  @override
  @JsonKey(name: 'min_og')
  final double? minOg;
  @override
  @JsonKey(name: 'max_og')
  final double? maxOg;
  @override
  @JsonKey(name: 'min_fg')
  final double? minFg;
  @override
  @JsonKey(name: 'max_fg')
  final double? maxFg;
  @override
  @JsonKey(name: 'offset')
  final int? offset;
  @override
  @JsonKey(name: 'limit')
  final int? limit;

  @override
  String toString() {
    return 'BeerConfig(type: $type, color: $color, minAlc: $minAlc, maxAlc: $maxAlc, minIbu: $minIbu, maxIbu: $maxIbu, minOg: $minOg, maxOg: $maxOg, minFg: $minFg, maxFg: $maxFg, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeerConfigImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.minAlc, minAlc) || other.minAlc == minAlc) &&
            (identical(other.maxAlc, maxAlc) || other.maxAlc == maxAlc) &&
            (identical(other.minIbu, minIbu) || other.minIbu == minIbu) &&
            (identical(other.maxIbu, maxIbu) || other.maxIbu == maxIbu) &&
            (identical(other.minOg, minOg) || other.minOg == minOg) &&
            (identical(other.maxOg, maxOg) || other.maxOg == maxOg) &&
            (identical(other.minFg, minFg) || other.minFg == minFg) &&
            (identical(other.maxFg, maxFg) || other.maxFg == maxFg) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, color, minAlc, maxAlc,
      minIbu, maxIbu, minOg, maxOg, minFg, maxFg, offset, limit);

  /// Create a copy of BeerConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeerConfigImplCopyWith<_$BeerConfigImpl> get copyWith =>
      __$$BeerConfigImplCopyWithImpl<_$BeerConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeerConfigImplToJson(
      this,
    );
  }
}

abstract class _BeerConfig implements BeerConfig {
  const factory _BeerConfig(
      {@JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'color') final String? color,
      @JsonKey(name: 'min_alc') final double? minAlc,
      @JsonKey(name: 'max_alc') final double? maxAlc,
      @JsonKey(name: 'min_ibu') final double? minIbu,
      @JsonKey(name: 'max_ibu') final double? maxIbu,
      @JsonKey(name: 'min_og') final double? minOg,
      @JsonKey(name: 'max_og') final double? maxOg,
      @JsonKey(name: 'min_fg') final double? minFg,
      @JsonKey(name: 'max_fg') final double? maxFg,
      @JsonKey(name: 'offset') final int? offset,
      @JsonKey(name: 'limit') final int? limit}) = _$BeerConfigImpl;

  factory _BeerConfig.fromJson(Map<String, dynamic> json) =
      _$BeerConfigImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'color')
  String? get color;
  @override
  @JsonKey(name: 'min_alc')
  double? get minAlc;
  @override
  @JsonKey(name: 'max_alc')
  double? get maxAlc;
  @override
  @JsonKey(name: 'min_ibu')
  double? get minIbu;
  @override
  @JsonKey(name: 'max_ibu')
  double? get maxIbu;
  @override
  @JsonKey(name: 'min_og')
  double? get minOg;
  @override
  @JsonKey(name: 'max_og')
  double? get maxOg;
  @override
  @JsonKey(name: 'min_fg')
  double? get minFg;
  @override
  @JsonKey(name: 'max_fg')
  double? get maxFg;
  @override
  @JsonKey(name: 'offset')
  int? get offset;
  @override
  @JsonKey(name: 'limit')
  int? get limit;

  /// Create a copy of BeerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeerConfigImplCopyWith<_$BeerConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
