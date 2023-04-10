import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
              child: Image.asset("assets/images/finish.jpg"),

            ),
            Text("SIGN-UP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 10,),
            Text("Create an account to become a member",style: TextStyle(fontSize: 13,color: Colors.white),),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("First Name",style: TextStyle(color: Colors.white,fontSize: 20),),
                  TextFormField(
                    style:TextStyle(fontSize: 15,color: Colors.white),
                    key: ValueKey('firstname'),
                    autocorrect: false,
                    textCapitalization: TextCapitalization.none,
                    enableSuggestions: false,
                    validator: (value) {
                      if (value!.isEmpty || value.contains('*')) {
                        return 'Pleas enter first name';
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "hello@company.com",
                      hintStyle: TextStyle(color: Colors.grey),
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
                  SizedBox(height: 20,),
                  Text("Last Name",style: TextStyle(color: Colors.white,fontSize: 20)),
                  TextFormField(
                    style:TextStyle(fontSize: 15,color: Colors.white),
                    key: ValueKey('lastname'),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 7) {
                        return 'Pleas enter greater than 7';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
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
                  Text("Email",style: TextStyle(color: Colors.white,fontSize: 20),),
                  TextFormField(
                    style:TextStyle(fontSize: 15,color: Colors.white),
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
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "hello@company.com",
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
                  TextFormField(
                    style:TextStyle(fontSize: 15,color: Colors.white),
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
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "*****",
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
                  Text("Forgot Password?",style: TextStyle(fontSize: 20,color: Colors.white),),

                  SizedBox(height: 30,),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                    },
                    minWidth: double.infinity,
                    height: 60,
                    color: Colors.red,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("I am already a member!",style: TextStyle(color: Colors.white),),
                      MaterialButton(onPressed: (){},
                        child: Text("Log In",style: TextStyle(color: Colors.cyan,fontSize: 20),),)
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
