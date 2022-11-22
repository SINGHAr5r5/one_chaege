import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Appbars extends StatefulWidget {
  const Appbars({
    Key? key,
    required String data,
  }) : super(key: key);

  @override
  State<Appbars> createState() => _AppbarsState();
}

class _AppbarsState extends State<Appbars> {
  @override
  PreferredSize build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
          titleSpacing: 0,
          centerTitle: true,
          title: Text(
            'ประวัติ',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ));
  }
}
