import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: myWidth*0.9,
          height: myHeight*0.5,
          child: Stack(
            children: [
              Positioned(
                // australiangpt7S (0:164)
                left: 30,
                top: 200,
                child: Align(
                  child: SizedBox(
                    width: 115,
                    height: 25,
                    child: Text(
                      'Australian GP',
                    ),
                  ),
                ),
              ),
              Positioned(
                // frame304Lk8 (0:168)
                left: 70,
                top: 20,
                child: Container(
                  width: 250,
                  height: 160,
                  child: Stack(
                    children: [
                      Positioned(
                        // vector104T44 (0:169)
                        left: 20,
                        top: 12,
                        child: Align(
                          child: SizedBox(
                            width: 212,
                            height: 140,
                            child: Image.asset(
                              'assets/page-1/images/vector-104.png',
                              width: 211,
                              height:140,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // vector65wE8 (0:170)
                        left: 0,
                        top: 0,
                        child: Align(
                          child: SizedBox(
                            width: 250,
                            height: 160,
                            child: Image.asset(
                              'assets/page-1/images/vector-65.png',
                              width: 250,
                              height: 160,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 135,
                        top: 135,
                        child: Align(
                          child: SizedBox(
                            width: 28,
                            height: 19,
                            child: Image.asset(
                              'assets/images/racetracck.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // kA6t (0:175)
                left: 315,
                top: 196,
                child: Align(
                  child: SizedBox(
                    width: 43,
                    height: 29,
                    child: Text(
                      '16K',
                      textAlign: TextAlign.right,

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
