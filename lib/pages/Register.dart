import 'package:flutter/material.dart';
import 'package:myapp/pages/header.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:myapp/utils/routes.dart';
import 'package:myapp/widgets/drawer.dart';

class SignUpPage extends StatelessWidget {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToLogin(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.loginRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          color: Colors.white,
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/Wavy_Gen-01_Single-07.jpg"),
                )),
              ),
              Column(
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Complete Name",
                          labelText: "Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Name cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Email Id",
                          labelText: "Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Email cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Your Mobile No.",
                          labelText: "Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Number cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          )),
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value!.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
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
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
