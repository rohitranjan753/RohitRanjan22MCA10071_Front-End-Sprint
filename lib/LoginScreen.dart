import 'package:flutter/material.dart';
import 'package:rohit_frontendsprintmca/DashboardScreen.dart';
import 'package:rohit_frontendsprintmca/SignupScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              height: myHeight*0.3,
              width: double.infinity,
              child: Image.asset("assets/images/82024-finish-flags.gif"),

            ),
            SizedBox(height: 20,),
            Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 10,),
            Text("Enter your email and password to login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email",style: TextStyle(color: Colors.white,),),
                  SizedBox(height: 20,),
                  TextFormField(
                    style:TextStyle(fontSize: 20,color: Colors.white),
                    key: ValueKey('email'),
                    autocorrect: false,
                    textCapitalization: TextCapitalization.none,
                    enableSuggestions: false,
                    validator: (value) {
                      if (value!.isEmpty || value.contains('*')) {
                        return 'Pleas enter valid email address';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "hello@company.com",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                    onSaved: (value) {

                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Password",style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style:TextStyle(fontSize: 20,color: Colors.white),
                    key: ValueKey('password'),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 7) {
                        return 'Pleas enter greater than 7';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Your Password",

                      contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                    obscureText: true,
                    onSaved: (value) {

                    },
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.topRight,
                      child: Text("Forgot Password?",style: TextStyle(fontSize: 20,color: Colors.white),)),
                  SizedBox(height: 30,),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoardScreen()));
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
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("I am a new user!",style: TextStyle(color: Colors.white),),
                      MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                      },
                      child: Text("Sign Up",style: TextStyle(color: Colors.cyan,fontSize: 20),),)
                    ],
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
