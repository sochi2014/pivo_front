import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:pivo_front/res/assets.dart';

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
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Stack(
      children: [
        Positioned.fill(
          child: OSMFlutter(
            controller: controller,
            osmOption: OSMOption(),
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            height: 16,
            width: 400,
            decoration: BoxDecoration(
                color: colorScheme.onPrimary,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    Assets.rf,
                    fit: BoxFit.contain,
                    height: 12,
                    width: 16,
                  ),
                  Text(
                    'Application made by Хмельная Гармония for ITMO',
                    style: textTheme.displaySmall
                        ?.copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
