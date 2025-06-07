import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState(); //_ make it private
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()){
      setState(() {
      changeButton = true;
    });
    await Future.delayed(
      Duration(seconds: 1),
    ); //will wait for a second and then route to homeRoute
    await Navigator.pushNamed(context, MyRoutes.homeRoute);

    setState(() {
      changeButton = false; //makes the login button go to its previous state
    });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,

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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },

                      onChanged: (value) {
                        name = value;
                        setState(
                          () {},
                        ); //changes state , call build method again
                      },
                    ),

                    TextFormField(
                      obscureText: true, //hiding the password
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty){
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 40.0),

                    Material(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(
                        changeButton ? 50 : 0,
                      ),
                      child: InkWell(
                        onTap: () => moveToHome(context),

                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          height: 50,
                          width: changeButton
                              ? 50
                              : 150, //when pressed the button it changes to true , it takes value 50
                          // color: Colors.deepPurple, //remove while decoration
                          alignment: Alignment.center,

                          child: changeButton
                              ? Icon(Icons.done, color: Colors.white)
                              : Text(
                                  //changing text to icon
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                        ),
                      ),
                    ),
                    // decoration: BoxDecoration(
                    // shape: changeButton ? BoxShape.circle: BoxShape.rectangle, //cant use bot
                    //   color: Colors.deepPurple,
                    // );

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
      ),
    );
  }
}
