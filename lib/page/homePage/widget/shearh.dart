import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BuildShearh extends StatefulWidget {
  const BuildShearh({super.key});

  @override
  State<BuildShearh> createState() => _BuildShearhState();
}

class _BuildShearhState extends State<BuildShearh> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
            flex: 2,
            child: SizedBox(
                // height: 150,
                )),
        Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      //color: Colors.red,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: new BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xffC1FCF3)),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50.0)),
                          height: 50.0,
                          // color: Colors.white,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Padding(
                                padding: EdgeInsets.all(0.0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                              Flexible(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.all(14.0),
                                    hintText: 'Search ',
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: 56,
                            height: 40,
                            decoration: new BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xffC1FCF3)),
                              color: Colors
                                  .white, //new Color.fromRGBO(255, 0, 0, 0.0),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/ic_setting.png",
                                height: 10,
                                width: 10,
                              ),
                            )),
                      ),
                    ))
              ],
            )),
      ],
    );
  }
}
