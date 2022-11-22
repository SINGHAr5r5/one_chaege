import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:one_chaege_v1/page/homePage/widget/Buttonbar.dart';
import 'package:one_chaege_v1/page/homePage/widget/bar.dart';
import 'package:one_chaege_v1/page/homePage/widget/googleMaps.dart';
import 'package:one_chaege_v1/page/homePage/widget/shearh.dart';
import 'homePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paginated_search_bar/paginated_search_bar.dart';
import 'package:searchfield/searchfield.dart';
import 'package:getwidget/getwidget.dart';

class HomePagePage extends StatefulWidget {
  const HomePagePage({Key? key}) : super(key: key);

  @override
  _HomePagePageState createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePagePage> {
  late HomePageCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = HomePageCubit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => _cubit,
        child: BlocListener<HomePageCubit, HomePageState>(
          listener: (context, state) {},
          child: BlocBuilder<HomePageCubit, HomePageState>(
            builder: (context, state) {
              return _buildPage(context, state);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildPage(BuildContext context, HomePageState state) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          // color: Colors.red,
          child: const BuildGoogleMaps(),
        ),
        Container(
          width: double.infinity,
          height: 170.0,
          //color: Colors.amber,
          child: const BuildShearh(),
        ),
        Container(
          width: double.infinity,
          height: 100.0,
          // color: Colors.green,
          child: const TopBar(),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          // color: Colors.green,
          child: const BuildButtonBar(),
        )
      ],
    );
  }
}
