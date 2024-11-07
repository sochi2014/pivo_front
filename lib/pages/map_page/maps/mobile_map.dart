import 'package:flutter/material.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/res/assets.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MobileMap extends StatefulWidget {
  const MobileMap({
    super.key,
    required this.places,
    required this.onTap,
  });

  final List<Place> places;

  final ValueChanged<Place> onTap;

  @override
  State<MobileMap> createState() => _MobileMapState();
}

class _MobileMapState extends State<MobileMap> {
  YandexMapController? controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MobileMap oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('UPDATED]');
  }

  @override
  Widget build(BuildContext context) {
    return YandexMap(
      key: const ValueKey('main-map'),
      onMapCreated: (controller) {
        this.controller = controller;
        controller.moveCamera(
          CameraUpdate.newCameraPosition(
            const CameraPosition(
              zoom: 10,
              target: Point(
                latitude: 59.90,
                longitude: 30.33,
              ),
            ),
          ),
        );
      },
      mapObjects: [
        for (final place in widget.places)
          PlacemarkMapObject(
            mapId: MapObjectId(place.id.toString()),
            icon: PlacemarkIcon.single(
              PlacemarkIconStyle(
                image: BitmapDescriptor.fromAssetImage(Assets.beerIcon),
              ),
            ),
            onTap: (_, p) => _onTap(place, p),
            point: Point(
              latitude: double.parse(place.address.latitude ?? '0.0'),
              longitude: double.parse(place.address.longitude ?? '0.0'),
            ),
          )
      ],
    );
  }

  void _onTap(Place mapObject, Point point) {
    controller?.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: point,
          zoom: 12,
        ),
      ),
      animation: const MapAnimation(),
    );

    widget.onTap(mapObject);
  }
}
