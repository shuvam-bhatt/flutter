import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState(); //_ make it private
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login_image.png", fit: BoxFit.cover),
            SizedBox(height: 20.0),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),

            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 32.0,
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",
                    ),

                    onChanged: (value) {
                      name = value;
                      setState(() {}); //changes state , call build method again
                    },
                  ),

                  TextFormField(
                    obscureText: true, //hiding the password
                    decoration: InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                  ),
                  SizedBox(height: 40.0),

                  InkWell(
                    
                    onTap: () async {
                      setState(() {
                        changeButton= true;
                      });

                      await Future.delayed(Duration(seconds: 1)); //will wait for a second and then route to homeRoute
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },


                    child: AnimatedContainer(
                      duration: Duration(seconds:1),
                      height: 50,
                      width: changeButton? 50 : 150,  //when pressed the button it changes to true , it takes value 50
                      // color: Colors.deepPurple, //remove while decoration
                      alignment: Alignment.center,

                      child: changeButton ? Icon(Icons.done,color: Colors.white,) : Text( //changing text to icon
                        "Login", 
                         style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,
                          fontSize: 18 )
                          ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    // shape: changeButton ? BoxShape.circle: BoxShape.rectangle, //cant use bot
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8 ), 

                  );

    

                  // ElevatedButton(
                  //   style: TextButton.styleFrom(minimumSize: Size(100, 40)),
                  //   onPressed: () {
                  //     Navigator.pushNamed(
                  //       context,
                  //       MyRoutes.homeRoute,
                  //     ); //to navigate ,can run without validation
                  //   },
                  //   child: Text("Login"),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
