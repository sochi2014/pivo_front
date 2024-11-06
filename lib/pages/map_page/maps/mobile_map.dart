import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MobileMap extends StatelessWidget {
  const MobileMap({super.key});

  @override
  Widget build(BuildContext context) {
    return YandexMap();
  }
}
