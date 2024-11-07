import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/res/assets.dart';

class WebMap extends StatefulWidget {
  const WebMap({
    super.key,
    required this.places,
    required this.onPlaceTap,
  });

  final ValueChanged<Place> onPlaceTap;
  final List<Place> places;

  @override
  State<WebMap> createState() => _WebMapState();
}

class _WebMapState extends State<WebMap> with OSMMixinObserver {
  MapController controller = MapController(
    initPosition: GeoPoint(latitude: 59.90, longitude: 30.33),
  );

  @override
  void initState() {
    super.initState();
    _setMarkers(widget.places.toSet());
    controller.addObserver(this);
  }

  @override
  void didUpdateWidget(covariant WebMap oldWidget) {
    var places = widget.places.toSet().difference(oldWidget.places.toSet());
    _setMarkers(places);
    super.didUpdateWidget(oldWidget);
  }

  void _setMarkers(Set<Place> places) {
    for (final marker in places) {
      final lat = double.tryParse(marker.address.latitude ?? '');
      final lon = double.tryParse(marker.address.longitude ?? '');

      if (lat == null || lon == null) {
        continue;
      }

      controller.addMarker(
        GeoPoint(latitude: lat, longitude: lon),
        markerIcon: MarkerIcon(
          iconWidget: IconButton.filled(
            onPressed: () {
              print(marker.name);
            },
            icon: const Icon(Icons.sports_bar),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return Stack(
      children: [
        Positioned.fill(
          child: OSMFlutter(
            controller: controller,
            osmOption: const OSMOption(
              userTrackingOption: UserTrackingOption(
                enableTracking: false,
                unFollowUser: false,
              ),
              zoomOption: ZoomOption(
                initZoom: 11,
                minZoomLevel: 3,
                maxZoomLevel: 19,
                stepZoom: 1.0,
              ),
            ),
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
                borderRadius:
                    const BorderRadius.only(topLeft: Radius.circular(8))),
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
                    style: textTheme.displaySmall?.copyWith(fontSize: 10),
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
    controller.removeObserver(this);
    controller.dispose();
    super.dispose();
  }

  @override
  Future<void> mapIsReady(bool isReady) async {}

  @override
  void onSingleTap(GeoPoint position) {
    print(position);
    final pos = widget.places.where((p) {
      final lat = p.address.latitude;
      final lon = p.address.longitude;

      return lon == position.longitude.toString() ||
          lat == position.latitude.toString();
    }).firstOrNull;

    if (pos != null) {
      widget.onPlaceTap(pos);
    }

    super.onSingleTap(position);
  }
}
