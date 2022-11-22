import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BuildGoogleMaps extends StatefulWidget {
  const BuildGoogleMaps({super.key});

  @override
  State<BuildGoogleMaps> createState() => _BuildGoogleMapsState();
}

class _BuildGoogleMapsState extends State<BuildGoogleMaps> {
  @override
  Widget build(BuildContext context) {
    LatLng latLng = const LatLng(13.674307, 100.606692);
    CameraPosition cameraPosition = CameraPosition(
      target: latLng,
      zoom: 16.0,
    );
    return Container(
      height: 350,
      child: GoogleMap(
        initialCameraPosition: cameraPosition,
        mapType: MapType.normal,
        onMapCreated: ((controller) {}),
      ),
    );
  }
}
