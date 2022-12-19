import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  final Completer<NaverMapController> _controller = Completer();

  static const CameraPosition initPosition = CameraPosition(
    target: LatLng(37.3626138, 126.9264801),
    zoom: 17.0,);

  Set<Marker> markers = {};
  Set<PathOverlay> pathOverlays = {};
  Set<CircleOverlay> circles = {};
  Set<PolygonOverlay> polygons = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          NaverMap(
            initialCameraPosition: initPosition,
            onMapCreated: (NaverMapController controller) {
              _controller.complete(controller);
            },

            mapType: MapType.Basic,
            pathOverlays: pathOverlays,
            circles: circles.toList(),
            polygons: polygons.toList(),
            markers: markers.toList(),
            onMapTap: (LatLng latLng) async {
              final NaverMapController controller = await _controller.future;
              controller.moveCamera(CameraUpdate.scrollTo(latLng), animationDuration: 2);

              setState(() {
                markers.add(
                  Marker(markerId: latLng.toString(), position: latLng, infoWindow: "${latLng.latitude} / ${latLng.longitude}")
                );
              }); //setState
            },
            useSurface: kReleaseMode,
          )
        ],
      ),
    );
  }
}
