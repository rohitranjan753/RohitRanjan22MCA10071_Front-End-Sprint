import 'package:flutter/material.dart';
import 'package:rohit_frontendsprintmca/LoginScreen.dart';

class OnBorading extends StatefulWidget {
  const OnBorading({Key? key}) : super(key: key);

  @override
  State<OnBorading> createState() => _OnBoradingState();
}

class _OnBoradingState extends State<OnBorading> {

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: myHeight*0.1,
                    width: myWidth*0.15,
                    child: Card(
                      elevation: 10,
                      child: Image.asset("assets/images/and_logo.png"),
                    ),
                  ),
                  Text("FRONTEND",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,),),
                  Container(
                    width: myWidth*0.8,
                      child: Image.asset("assets/images/formula1_helmet.png")),
                  MaterialButton(
                    onPressed: () {},
                    minWidth: double.infinity,
                    height: 60,
                    color: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 20,),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                    minWidth: double.infinity,
                    height: 60,
                    color: Colors.red,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "LOGIN",
                      style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
        ),
    );
  }
}
