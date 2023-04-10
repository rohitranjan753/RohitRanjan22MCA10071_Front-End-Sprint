import 'package:flutter/material.dart';

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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //firstcontainer
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 3)),
              margin: EdgeInsets.all(10),
              width: myWidth * 0.9,
              height: myHeight * 0.4,
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                            height: myHeight * 0.2,
                            child: Image.asset("assets/images/racetrac.png"))),
                    Positioned(
                      // australiangpt7S (0:164)
                      left: 30,
                      top: 200,
                      child: Text(
                        'Australian GP',
                      ),
                    ),
                    Positioned(
                      // australiangpt7S (0:164)
                      left: 30,
                      top: 210,
                      child: Text(
                        'Melbourne',
                      ),
                    ),
                    Positioned(
                      // australiangpt7S (0:164)
                      left: 300,
                      top: 200,
                      child: Text(
                        '16K',
                      ),
                    ),
                    Positioned(
                      // australiangpt7S (0:164)
                      left: 300,
                      top: 210,
                      child: Text(
                        'Participants',
                      ),
                    ),
                    Positioned(
                      // australiangpt7S (0:164)
                      left: 30,
                      top: 230,
                      child: Text(
                        '31st Mar - 2nd April',
                      ),
                    ),
                    Positioned(
                        // australiangpt7S (0:164)
                        left: 250,
                        top: 230,
                        child: Container(
                          width: myWidth * 0.3,
                          height: myHeight * 0.03,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                          ),
                          child: Text(
                            "36,000 Pool raised",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                        )),
                    Positioned(
                      // australiangpt7S (0:164)
                      left: 30,
                      top: 270,
                      child: MaterialButton(
                        onPressed: () {},
                        minWidth: myWidth * 0.8,
                        height: 40,
                        color: Colors.red,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Palce Bet",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Text("Lockdown in"),
                Text(
                  "06:12:44",
                  style:
                      TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
                ),
              ],
            ),

            //secondcontainer
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 3)),
              margin: EdgeInsets.all(10),
              width: myWidth * 0.9,
              height: myHeight * 0.25,
              child: Container(
                child: Stack(
                  children: [
                    Positioned(

                      left: 30,
                      top: 20,
                      child: Text(
                        'Available Funds',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Positioned(

                      left: 300,
                      top: 20,
                      child: Text(
                        'Placed',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Positioned(

                      left: 30,
                      top: 38,
                      child: Text(
                        '\$16.000',
                        style:
                            TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      // australiangpt7S (0:164)
                      left: 300,
                      top: 38,
                      child: Text(
                        '3rd',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(

                      left: 280,
                      top: 67,
                      child: Text(
                        'in last race',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(

                      left: 260,
                      top: 100,
                      child: Text(
                        'Last Winnings',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 310,
                      top: 120,
                      child: Text(
                        '\$5800',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 260,
                      top: 150,
                      child: Text(
                        'Total Winnings',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 310,
                      top: 170,
                      child: Text(
                        '\$9200',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(

                      left: 30,
                      top: 100,
                      child: Text(
                        'Amount Withdrawn',
                      ),
                    ),
                    Positioned(

                      left: 30,
                      top: 120,
                      child: Text(
                        '\$10,000',
                        style:
                            TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 175,
                      child: Text(
                        'Last withdrawn: 26 Feb',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //Thrid Container
            Container(
              width: myWidth * 0.9,
              height: myHeight * 0.1,
              child: Container(
                child: Stack(
                  children: [
                    Positioned(

                      left: 30,
                      top: 20,
                      child: Text(
                        'UPCOMING',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Positioned(

                      left: 280,
                      top: 10,
                      child: MaterialButton(
                        onPressed: () {

                        },
                        height: 40,
                        color: Colors.cyanAccent[100],
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "View All",
                          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            //fourthcontainer
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 3)),
              margin: EdgeInsets.all(10),
              width: myWidth * 0.9,
              height: myHeight * 0.2,
              child: Container(
                child: Stack(
                  children: [
                    Positioned(
                      left: 30,
                      top: 20,
                      child: Text(
                        'Race 2',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 40,
                      child: Text(
                        'JEDDAH',
                        style: TextStyle(fontSize: 20,color: Colors.deepOrange,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 60,
                      child: Text(
                        'Saudi Arabian',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 75,
                      child: Text(
                        'Grand Pix',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 75,
                      child: Text(
                        'Grand Pix',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(

                      left: 30,
                      top: 100,
                      child: MaterialButton(
                        onPressed: () {

                        },
                        height: 40,
                        color: Colors.grey[400],
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "17-19 March",
                          style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 200,
                      top: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.transparent,)
                        ),
                        height: 100,
                          child: Image.asset("assets/images/racetrac.png")),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
