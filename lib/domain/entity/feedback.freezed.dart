// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
mixin _$Feedback {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  int get ratings => throw _privateConstructorUsedError;
  Profile get user => throw _privateConstructorUsedError;
  Beer? get beer => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_feedback')
  TypeFeedback get type => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;

  /// Serializes this Feedback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedbackCopyWith<Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCopyWith<$Res> {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) then) =
      _$FeedbackCopyWithImpl<$Res, Feedback>;
  @useResult
  $Res call(
      {int id,
      String text,
      int ratings,
      Profile user,
      Beer? beer,
      Place? place,
      @JsonKey(name: 'type_feedback') TypeFeedback type,
      List<Photo> photos});

  $ProfileCopyWith<$Res> get user;
  $BeerCopyWith<$Res>? get beer;
  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class _$FeedbackCopyWithImpl<$Res, $Val extends Feedback>
    implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? ratings = null,
    Object? user = null,
    Object? beer = freezed,
    Object? place = freezed,
    Object? type = null,
    Object? photos = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      beer: freezed == beer
          ? _value.beer
          : beer // ignore: cast_nullable_to_non_nullable
              as Beer?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeFeedback,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ) as $Val);
  }

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get user {
    return $ProfileCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BeerCopyWith<$Res>? get beer {
    if (_value.beer == null) {
      return null;
    }

    return $BeerCopyWith<$Res>(_value.beer!, (value) {
      return _then(_value.copyWith(beer: value) as $Val);
    });
  }

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedbackImplCopyWith<$Res>
    implements $FeedbackCopyWith<$Res> {
  factory _$$FeedbackImplCopyWith(
          _$FeedbackImpl value, $Res Function(_$FeedbackImpl) then) =
      __$$FeedbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String text,
      int ratings,
      Profile user,
      Beer? beer,
      Place? place,
      @JsonKey(name: 'type_feedback') TypeFeedback type,
      List<Photo> photos});

  @override
  $ProfileCopyWith<$Res> get user;
  @override
  $BeerCopyWith<$Res>? get beer;
  @override
  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class __$$FeedbackImplCopyWithImpl<$Res>
    extends _$FeedbackCopyWithImpl<$Res, _$FeedbackImpl>
    implements _$$FeedbackImplCopyWith<$Res> {
  __$$FeedbackImplCopyWithImpl(
      _$FeedbackImpl _value, $Res Function(_$FeedbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? ratings = null,
    Object? user = null,
    Object? beer = freezed,
    Object? place = freezed,
    Object? type = null,
    Object? photos = null,
  }) {
    return _then(_$FeedbackImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      ratings: null == ratings
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
      beer: freezed == beer
          ? _value.beer
          : beer // ignore: cast_nullable_to_non_nullable
              as Beer?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeFeedback,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeedbackImpl implements _Feedback {
  const _$FeedbackImpl(
      {required this.id,
      required this.text,
      required this.ratings,
      required this.user,
      this.beer,
      this.place,
      @JsonKey(name: 'type_feedback') required this.type,
      final List<Photo> photos = const []})
      : _photos = photos;

  factory _$FeedbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedbackImplFromJson(json);

  @override
  final int id;
  @override
  final String text;
  @override
  final int ratings;
  @override
  final Profile user;
  @override
  final Beer? beer;
  @override
  final Place? place;
  @override
  @JsonKey(name: 'type_feedback')
  final TypeFeedback type;
  final List<Photo> _photos;
  @override
  @JsonKey()
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'Feedback(id: $id, text: $text, ratings: $ratings, user: $user, beer: $beer, place: $place, type: $type, photos: $photos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedbackImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.ratings, ratings) || other.ratings == ratings) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.beer, beer) || other.beer == beer) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, ratings, user, beer,
      place, type, const DeepCollectionEquality().hash(_photos));

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedbackImplCopyWith<_$FeedbackImpl> get copyWith =>
      __$$FeedbackImplCopyWithImpl<_$FeedbackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedbackImplToJson(
      this,
    );
  }
}

abstract class _Feedback implements Feedback {
  const factory _Feedback(
      {required final int id,
      required final String text,
      required final int ratings,
      required final Profile user,
      final Beer? beer,
      final Place? place,
      @JsonKey(name: 'type_feedback') required final TypeFeedback type,
      final List<Photo> photos}) = _$FeedbackImpl;

  factory _Feedback.fromJson(Map<String, dynamic> json) =
      _$FeedbackImpl.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  int get ratings;
  @override
  Profile get user;
  @override
  Beer? get beer;
  @override
  Place? get place;
  @override
  @JsonKey(name: 'type_feedback')
  TypeFeedback get type;
  @override
  List<Photo> get photos;

  /// Create a copy of Feedback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedbackImplCopyWith<_$FeedbackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
