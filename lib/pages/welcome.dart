import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:myapp/pages/Authenticate/Register.dart';
import 'package:myapp/pages/Authenticate/login_page.dart';
import 'package:myapp/pages/home/mainbody.dart';
import 'package:myapp/pages/home/home.dart';


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/cropped-sp-graphics-white-1024x613.png",
                          fit: BoxFit.contain,
                          height: 80,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Welcome To SPGraphics",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.purple),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Text(
                    //   "something for test",
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     color: Colors.green[700],
                    //     fontSize: 18,
                    //   ),
                    // )
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image:
                        AssetImage("assets/images/Wavy_Tech-28_Single-10.jpg"),
                  )),
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                    SizedBox(height: 20),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      color: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                )
              ]),
        ),
      )),
    );
  }
}
