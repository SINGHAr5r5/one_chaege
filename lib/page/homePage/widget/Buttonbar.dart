import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BuildButtonBar extends StatefulWidget {
  const BuildButtonBar({super.key});

  @override
  State<BuildButtonBar> createState() => _BuildButtonBarState();
}

class _BuildButtonBarState extends State<BuildButtonBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                  //color: Colors.blue,
                  )),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                //color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage("assets/ic_btn1.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: new BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Image.asset(
                                        "assets/ic_station.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                    )),
                              ),
                            ),
                            const Text(
                              'Stations',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 9),
                            )
                          ],
                        ),
                        //color: Colors.blue,
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: new BoxDecoration(
                                    border: Border.all(
                                        width: 0.5, color: Color(0xffC1FCF3)),
                                    color: Color.fromARGB(255, 2, 243,
                                        211), //new Color.fromRGBO(255, 0, 0, 0.0),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.asset(
                                      "assets/ic_scan.png",
                                      height: 30,
                                      width: 30,
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Scan',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: new BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      "assets/ic_profile.png",
                                      height: 20,
                                      width: 20,
                                    ),
                                  )),
                            ),
                          ),
                          const Text(
                            'Profile',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
          //Expanded(child: SizedBox(height: 10,))
        ],
      ),
    );
  }
}
