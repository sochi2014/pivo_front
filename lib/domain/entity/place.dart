import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pivo_front/domain/entity/address.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
    const factory Place({
      required int id,
      required String name,
      @JsonKey(name: 'phone_number')  String? phoneNumber,
      required Address address,
}) = _Place;

    factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}