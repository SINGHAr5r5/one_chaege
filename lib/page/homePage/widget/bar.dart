import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

String profilePictureNull =
    'https://scontent.fcnx1-1.fna.fbcdn.net/v/t1.6435-9/100559358_2960268557372101_3034963177143009280_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFa1qm7QVu4f51OsH-Ph7bhHT_ad1WY6rkdP9p3VZjquXPMJM05Skm-36KWK0-j5387d7pnTbCtkmrE3Ca6H7kg&_nc_ohc=I1PyhfQzBJ4AX_W7mtR&_nc_ht=scontent.fcnx1-1.fna&oh=00_AfAEEttrUH1U_h0TBmjQzLP8n5Rmfmn4Upz1Ii6CzvzmOA&oe=63A48190';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130.0,
      decoration: const BoxDecoration(
        color: Color(0xFF355FF5),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          //color: Colors.amber,
          child: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(profilePictureNull),
                  )),
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Testla Model3",
                          style: GoogleFonts.kanit(
                              textStyle: const TextStyle(
                                  fontSize: 13,
                                  color: Color(0xffeceef0),
                                  fontWeight: FontWeight.w600)),
                        ),
                        Text(
                          "Patrick chez",
                          style: GoogleFonts.kanit(
                              textStyle: const TextStyle(
                                  fontSize: 19,
                                  color: Color(0xffeceef0),
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  )),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 45,
                    width: 50,

                    // color: Colors.black,
                    decoration: new BoxDecoration(
                      color: Color(0xff1D2A28),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      radius: 20,
                      onTap: () {
                        setState(() {});
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(children: [
                          Row(
                            children: [
                              Text('Wallet',
                                  style: GoogleFonts.kanit(
                                      textStyle: const TextStyle(
                                          fontSize: 9,
                                          color: Color(0xff9FA7C5))))
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/ic_wallet.png",
                                height: 20,
                                width: 20,
                              ),
                              Text('780.000',
                                  style: GoogleFonts.kanit(
                                      textStyle: const TextStyle(
                                          fontSize: 14,
                                          color: Color(0xffFFFFFF),
                                          fontWeight: FontWeight.w500)))
                            ],
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  child: Container(
                    height: 40,
                    width: 40,
                    //color: Color(0xff1A2725)
                    decoration: new BoxDecoration(
                        color: Color(0xff1A2725),
                        borderRadius: BorderRadius.circular(50.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/ic_union.png",
                        height: 10,
                        width: 10,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
