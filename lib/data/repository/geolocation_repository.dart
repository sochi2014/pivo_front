import 'package:flutter/cupertino.dart';
import 'package:pivo_front/domain/entity/geo_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GeolocationRepository extends ChangeNotifier {
  GeolocationRepository({
    bool useCaching = true,
  }) : _useCaching = useCaching;

  bool get cityDeterminate => _city != null;

  GeoData? get city => _city;

  /// City geolocation.
  GeoData? _city;

  /// Use to enable/disable geolocation caching. Default value is true
  final bool _useCaching;

  /// Getting geolocation from cache.
  Future<void> initGeolocation() async {
    if (_useCaching) {
      final storage = await SharedPreferences.getInstance();
      final name = storage.getString('city_name');
      final fullName = storage.getString('city_full_name');
      final lat = storage.getString('lat');
      final cityFias = storage.getString('city_fias');
      final lon = storage.getString('lon');

      if (cityFias != null && (name != null || fullName != null)) {
        _city = GeoData(
          cityFias: cityFias,
          name: name ?? '',
          fullName: fullName ?? '',
          lat: lat ?? '',
          lon: lon ?? '',
        );
      }
    }
    notifyListeners();
  }

  Future<void> deleteGeolocation() async {
    _city = null;
    notifyListeners();
    final storage = await SharedPreferences.getInstance();
    await storage.remove('city_name');
    await storage.remove('city_full_name');
    await storage.remove('city_fias');
    await storage.remove('lon');
    await storage.remove('lat');
  }

  Future<GeoData> saveGeolocation({
    required GeoData city,
  }) async {
    _city = city;
    notifyListeners();
    if (_useCaching) {
      await _persistGeolocation();
    }
    return city;
  }

  Future<void> _persistGeolocation() async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString('city_name', _city!.name);
    await storage.setString('city_full_name', _city!.fullName);
    await storage.setString('city_fias', _city!.cityFias);
    await storage.setString('lat', _city!.lat);
    await storage.setString('lon', _city!.lon);
  }
}
