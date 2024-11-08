import 'package:freezed_annotation/freezed_annotation.dart';

part 'geopos.freezed.dart';
part 'geopos.g.dart';

@freezed
class Geopos with _$Geopos {
    const factory Geopos({

      required double latitude,
      required double longitude,
}) = _Geopos;

    factory Geopos.fromJson(Map<String, dynamic> json) => _$GeoposFromJson(json);
}