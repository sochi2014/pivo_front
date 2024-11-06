import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class WebMap extends StatefulWidget {
  const WebMap({super.key});

  @override
  State<WebMap> createState() => _WebMapState();
}

class _WebMapState extends State<WebMap> {
  MapController controller = MapController(
    initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    areaLimit: BoundingBox(
      east: 10.4922941,
      north: 47.8084648,
      south: 45.817995,
      west: 5.9559113,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return OSMFlutter(
      controller: controller,
      osmOption: OSMOption(),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
