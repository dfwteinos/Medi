import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:monkey_app_demo/const/colors.dart';
import 'package:monkey_app_demo/const/constants.dart';

class MapSample extends StatefulWidget {
  MapSample();
  static const routeName = "/mapScreen";
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  @override
  void initState() {
    getPolyPoints();
    super.initState();
  }

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const source = LatLng(37.983455017227236, 23.765291566113948);
  static const destination = LatLng(37.98228936834741, 23.734769977048444);

  List<LatLng> polylineCoordinates = [];

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.983455017227236, 23.765291566113948),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
    target: LatLng(37.98228936834741, 23.734769977048444),
    zoom: 13,
  );

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        google_api_key,
        PointLatLng(source.latitude, source.longitude),
        PointLatLng(destination.latitude, destination.longitude));
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
      setState(() {
        polylineCoordinates = polylineCoordinates;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: GoogleMap(
              myLocationButtonEnabled: false,
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              polylines: {
                Polyline(
                    polylineId: PolylineId("route"),
                    points: polylineCoordinates,
                    color: AppColor.red)
              },
              markers: {
                const Marker(
                  markerId: MarkerId("source"),
                  position: LatLng(37.983455017227236, 23.765291566113948),
                  infoWindow: InfoWindow(title: "Source"),
                ),
                const Marker(
                  markerId: MarkerId("destination"),
                  position: LatLng(37.98228936834741, 23.734769977048444),
                  infoWindow: InfoWindow(title: "Destination"),
                )
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        // icon: const Icon(Icons.),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
    await controller.getVisibleRegion();
  }
}
