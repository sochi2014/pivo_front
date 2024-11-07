// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_create.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedbackCreate _$FeedbackCreateFromJson(Map<String, dynamic> json) {
  return _FeedbackCreate.fromJson(json);
}

/// @nodoc
mixin _$FeedbackCreate {
  String get text => throw _privateConstructorUsedError;
  int get ratings => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'beer_id')
  int? get beerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'place_id')
  int? get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_feedback')
  TypeFeedback get typeFeedback => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_urls')
  List<String> get photos => throw _privateConstructorUsedError;

  /// Serializes this FeedbackCreate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeedbackCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackCreateCopyWith<FeedbackCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCreateCopyWith<$Res> {
  factory $FeedbackCreateCopyWith(
          FeedbackCreate value, $Res Function(FeedbackCreate) then) =
      _$FeedbackCreateCopyWithImpl<$Res, FeedbackCreate>;
  @useResult
  $Res call(
      {String text,
      int ratings,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'beer_id') int? beerId,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'type_feedback') TypeFeedback typeFeedback,
      @JsonKey(name: 'photo_urls') List<String> photos});
}

/// @nodoc
class _$FeedbackCreateCopyWithImpl<$Res, $Val extends FeedbackCreate>
    implements $FeedbackCreateCopyWith<$Res> {
  _$FeedbackCreateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedbackCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? ratings = null,
    Object? userId = null,
    Object? beerId = freezed,
    Object? placeId = freezed,
    Object? typeFeedback = null,
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      beerId: freezed == beerId
          ? _value.beerId
          : beerId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeFeedback: null == typeFeedback
          ? _value.typeFeedback
          : typeFeedback // ignore: cast_nullable_to_non_nullable
              as TypeFeedback,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedbackCreateImplCopyWith<$Res>
    implements $FeedbackCreateCopyWith<$Res> {
  factory _$$FeedbackCreateImplCopyWith(_$FeedbackCreateImpl value,
          $Res Function(_$FeedbackCreateImpl) then) =
      __$$FeedbackCreateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      int ratings,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'beer_id') int? beerId,
      @JsonKey(name: 'place_id') int? placeId,
      @JsonKey(name: 'type_feedback') TypeFeedback typeFeedback,
      @JsonKey(name: 'photo_urls') List<String> photos});
}

/// @nodoc
class __$$FeedbackCreateImplCopyWithImpl<$Res>
    extends _$FeedbackCreateCopyWithImpl<$Res, _$FeedbackCreateImpl>
    implements _$$FeedbackCreateImplCopyWith<$Res> {
  __$$FeedbackCreateImplCopyWithImpl(
      _$FeedbackCreateImpl _value, $Res Function(_$FeedbackCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FeedbackCreate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? ratings = null,
    Object? userId = null,
    Object? beerId = freezed,
    Object? placeId = freezed,
    Object? typeFeedback = null,
    Object? photos = null,
  }) {
    return _then(_$FeedbackCreateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      beerId: freezed == beerId
          ? _value.beerId
          : beerId // ignore: cast_nullable_to_non_nullable
              as int?,
      placeId: freezed == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int?,
      typeFeedback: null == typeFeedback
          ? _value.typeFeedback
          : typeFeedback // ignore: cast_nullable_to_non_nullable
              as TypeFeedback,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackCreateImpl implements _FeedbackCreate {
  const _$FeedbackCreateImpl(
      {required this.text,
      required this.ratings,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'beer_id') this.beerId,
      @JsonKey(name: 'place_id') this.placeId,
      @JsonKey(name: 'type_feedback') this.typeFeedback = TypeFeedback.beer,
      @JsonKey(name: 'photo_urls') final List<String> photos = const []})
      : _photos = photos;

  factory _$FeedbackCreateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackCreateImplFromJson(json);

  @override
  final String text;
  @override
  final int ratings;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'beer_id')
  final int? beerId;
  @override
  @JsonKey(name: 'place_id')
  final int? placeId;
  @override
  @JsonKey(name: 'type_feedback')
  final TypeFeedback typeFeedback;
  final List<String> _photos;
  @override
  @JsonKey(name: 'photo_urls')
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'FeedbackCreate(text: $text, ratings: $ratings, userId: $userId, beerId: $beerId, placeId: $placeId, typeFeedback: $typeFeedback, photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackCreateImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.beerId, beerId) || other.beerId == beerId) &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.typeFeedback, typeFeedback) ||
                other.typeFeedback == typeFeedback) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, ratings, userId, beerId,
      placeId, typeFeedback, const DeepCollectionEquality().hash(_photos));

  /// Create a copy of FeedbackCreate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackCreateImplCopyWith<_$FeedbackCreateImpl> get copyWith =>
      __$$FeedbackCreateImplCopyWithImpl<_$FeedbackCreateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackCreateImplToJson(
      this,
    );
  }
}

abstract class _FeedbackCreate implements FeedbackCreate {
  const factory _FeedbackCreate(
          {required final String text,
          required final int ratings,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'beer_id') final int? beerId,
          @JsonKey(name: 'place_id') final int? placeId,
          @JsonKey(name: 'type_feedback') final TypeFeedback typeFeedback,
          @JsonKey(name: 'photo_urls') final List<String> photos}) =
      _$FeedbackCreateImpl;

  factory _FeedbackCreate.fromJson(Map<String, dynamic> json) =
      _$FeedbackCreateImpl.fromJson;

  @override
  String get text;
  @override
  int get ratings;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'beer_id')
  int? get beerId;
  @override
  @JsonKey(name: 'place_id')
  int? get placeId;
  @override
  @JsonKey(name: 'type_feedback')
  TypeFeedback get typeFeedback;
  @override
  @JsonKey(name: 'photo_urls')
  List<String> get photos;

  /// Create a copy of FeedbackCreate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackCreateImplCopyWith<_$FeedbackCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
