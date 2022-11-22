import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'salary.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(25.1193, 55.3773);

class SalaryPage extends StatefulWidget {
  const SalaryPage({Key? key}) : super(key: key);

  @override
  _SalaryPageState createState() => _SalaryPageState();
}

class _SalaryPageState extends State<SalaryPage> {
  late SalaryCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = SalaryCubit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _cubit,
        child: BlocListener<SalaryCubit, SalaryState>(
          listener: (context, state) {},
          child: BlocBuilder<SalaryCubit, SalaryState>(
            builder: (context, state) {
              return _buildPage(context, state);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPage(BuildContext context, SalaryState state) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: showMap(),
      //body: _BuildGoogleMap(),
    );
  }

  Widget showMap() {
    LatLng latLng = LatLng(13.674307, 100.606692);
    CameraPosition cameraPosition = CameraPosition(
      target: latLng,
      zoom: 16.0,
    );
    return Container(
      height: 300.0,
      child: GoogleMap(
        initialCameraPosition: cameraPosition,
        mapType: MapType.normal,
        onMapCreated: ((controller) {}),
      ),
    );
  }

  Widget _BuildGoogleMap() {
    return Text('tt');
    // return GoogleMap(initialCameraPosition: CameraPosition(target:currentLocation,

    //) );
  }

  PreferredSize _buildAppBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          titleSpacing: 0,
          centerTitle: true,
          title: Text(
            'เงินเดือน',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ));
  }
}
