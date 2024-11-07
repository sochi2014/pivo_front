// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Beer _$BeerFromJson(Map<String, dynamic> json) {
  return _Beer.fromJson(json);
}

/// @nodoc
mixin _$Beer {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_name')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'alc_degree')
  String? get alc => throw _privateConstructorUsedError;
  @JsonKey(name: 'color_name')
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo')
  String? get photo => throw _privateConstructorUsedError;
  @JsonKey(name: 'ibu')
  double? get ibu => throw _privateConstructorUsedError;
  @JsonKey(name: 'og')
  String? get og => throw _privateConstructorUsedError;
  @JsonKey(name: 'fg')
  String? get fg => throw _privateConstructorUsedError;
  @JsonKey(name: 'barrel_aged')
  bool? get barrel_aged => throw _privateConstructorUsedError;

  /// Serializes this Beer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Beer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeerCopyWith<Beer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeerCopyWith<$Res> {
  factory $BeerCopyWith(Beer value, $Res Function(Beer) then) =
      _$BeerCopyWithImpl<$Res, Beer>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'brand') String? brand,
      @JsonKey(name: 'type_name') String? type,
      @JsonKey(name: 'alc_degree') String? alc,
      @JsonKey(name: 'color_name') String? color,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'ibu') double? ibu,
      @JsonKey(name: 'og') String? og,
      @JsonKey(name: 'fg') String? fg,
      @JsonKey(name: 'barrel_aged') bool? barrel_aged});
}

/// @nodoc
class _$BeerCopyWithImpl<$Res, $Val extends Beer>
    implements $BeerCopyWith<$Res> {
  _$BeerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Beer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? brand = freezed,
    Object? type = freezed,
    Object? alc = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? photo = freezed,
    Object? ibu = freezed,
    Object? og = freezed,
    Object? fg = freezed,
    Object? barrel_aged = freezed,
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
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      alc: freezed == alc
          ? _value.alc
          : alc // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      ibu: freezed == ibu
          ? _value.ibu
          : ibu // ignore: cast_nullable_to_non_nullable
              as double?,
      og: freezed == og
          ? _value.og
          : og // ignore: cast_nullable_to_non_nullable
              as String?,
      fg: freezed == fg
          ? _value.fg
          : fg // ignore: cast_nullable_to_non_nullable
              as String?,
      barrel_aged: freezed == barrel_aged
          ? _value.barrel_aged
          : barrel_aged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeerImplCopyWith<$Res> implements $BeerCopyWith<$Res> {
  factory _$$BeerImplCopyWith(
          _$BeerImpl value, $Res Function(_$BeerImpl) then) =
      __$$BeerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'brand') String? brand,
      @JsonKey(name: 'type_name') String? type,
      @JsonKey(name: 'alc_degree') String? alc,
      @JsonKey(name: 'color_name') String? color,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'photo') String? photo,
      @JsonKey(name: 'ibu') double? ibu,
      @JsonKey(name: 'og') String? og,
      @JsonKey(name: 'fg') String? fg,
      @JsonKey(name: 'barrel_aged') bool? barrel_aged});
}

/// @nodoc
class __$$BeerImplCopyWithImpl<$Res>
    extends _$BeerCopyWithImpl<$Res, _$BeerImpl>
    implements _$$BeerImplCopyWith<$Res> {
  __$$BeerImplCopyWithImpl(_$BeerImpl _value, $Res Function(_$BeerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Beer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? brand = freezed,
    Object? type = freezed,
    Object? alc = freezed,
    Object? color = freezed,
    Object? description = freezed,
    Object? photo = freezed,
    Object? ibu = freezed,
    Object? og = freezed,
    Object? fg = freezed,
    Object? barrel_aged = freezed,
  }) {
    return _then(_$BeerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      alc: freezed == alc
          ? _value.alc
          : alc // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      ibu: freezed == ibu
          ? _value.ibu
          : ibu // ignore: cast_nullable_to_non_nullable
              as double?,
      og: freezed == og
          ? _value.og
          : og // ignore: cast_nullable_to_non_nullable
              as String?,
      fg: freezed == fg
          ? _value.fg
          : fg // ignore: cast_nullable_to_non_nullable
              as String?,
      barrel_aged: freezed == barrel_aged
          ? _value.barrel_aged
          : barrel_aged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$BeerImpl implements _Beer {
  const _$BeerImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'brand') this.brand,
      @JsonKey(name: 'type_name') this.type,
      @JsonKey(name: 'alc_degree') this.alc,
      @JsonKey(name: 'color_name') this.color,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'photo') this.photo,
      @JsonKey(name: 'ibu') this.ibu,
      @JsonKey(name: 'og') this.og,
      @JsonKey(name: 'fg') this.fg,
      @JsonKey(name: 'barrel_aged') this.barrel_aged});

  factory _$BeerImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeerImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'brand')
  final String? brand;
  @override
  @JsonKey(name: 'type_name')
  final String? type;
  @override
  @JsonKey(name: 'alc_degree')
  final String? alc;
  @override
  @JsonKey(name: 'color_name')
  final String? color;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'photo')
  final String? photo;
  @override
  @JsonKey(name: 'ibu')
  final double? ibu;
  @override
  @JsonKey(name: 'og')
  final String? og;
  @override
  @JsonKey(name: 'fg')
  final String? fg;
  @override
  @JsonKey(name: 'barrel_aged')
  final bool? barrel_aged;

  @override
  String toString() {
    return 'Beer(id: $id, name: $name, brand: $brand, type: $type, alc: $alc, color: $color, description: $description, photo: $photo, ibu: $ibu, og: $og, fg: $fg, barrel_aged: $barrel_aged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.alc, alc) || other.alc == alc) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.ibu, ibu) || other.ibu == ibu) &&
            (identical(other.og, og) || other.og == og) &&
            (identical(other.fg, fg) || other.fg == fg) &&
            (identical(other.barrel_aged, barrel_aged) ||
                other.barrel_aged == barrel_aged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, brand, type, alc,
      color, description, photo, ibu, og, fg, barrel_aged);

  /// Create a copy of Beer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeerImplCopyWith<_$BeerImpl> get copyWith =>
      __$$BeerImplCopyWithImpl<_$BeerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeerImplToJson(
      this,
    );
  }
}

abstract class _Beer implements Beer {
  const factory _Beer(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'brand') final String? brand,
      @JsonKey(name: 'type_name') final String? type,
      @JsonKey(name: 'alc_degree') final String? alc,
      @JsonKey(name: 'color_name') final String? color,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'photo') final String? photo,
      @JsonKey(name: 'ibu') final double? ibu,
      @JsonKey(name: 'og') final String? og,
      @JsonKey(name: 'fg') final String? fg,
      @JsonKey(name: 'barrel_aged') final bool? barrel_aged}) = _$BeerImpl;

  factory _Beer.fromJson(Map<String, dynamic> json) = _$BeerImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'brand')
  String? get brand;
  @override
  @JsonKey(name: 'type_name')
  String? get type;
  @override
  @JsonKey(name: 'alc_degree')
  String? get alc;
  @override
  @JsonKey(name: 'color_name')
  String? get color;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'photo')
  String? get photo;
  @override
  @JsonKey(name: 'ibu')
  double? get ibu;
  @override
  @JsonKey(name: 'og')
  String? get og;
  @override
  @JsonKey(name: 'fg')
  String? get fg;
  @override
  @JsonKey(name: 'barrel_aged')
  bool? get barrel_aged;

  /// Create a copy of Beer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeerImplCopyWith<_$BeerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
