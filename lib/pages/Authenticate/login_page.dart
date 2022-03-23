import 'dart:ffi';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp/pages/Authenticate/Register.dart';
import 'package:myapp/pages/home/home.dart';
import 'package:myapp/services/auth.dart';
import 'package:myapp/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  // editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // firebase
  final _auth = FirebaseAuth.instance;

  // goggle signup buton
  GoogleSignIn googleAuth = new GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        // reg expression for email verification
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
          hintText: "Enter Your Email",
          labelText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    //password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
          hintText: "Enter Your Password",
          labelText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.purple,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
        // minWidth: MediaQuery.of(context).size.width,
        minWidth: double.infinity,
        height: 60,
        onPressed: () {
          signIn(emailController.text, passwordController.text);
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.purple,
            )),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                      child: Image.asset(
                        "assets/images/cropped-sp-graphics-white-1024x613.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: Image.asset(
                        "assets/images/20945597.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    emailField,
                    SizedBox(height: 20),
                    passwordField,
                    SizedBox(height: 20),
                    loginButton,
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SignInButton(Buttons.Google, onPressed: () {}),
                        // SignInButton(Buttons.Facebook,mini: true, onPressed: (){})
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an Account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w400,
                                fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                )),
          ),
        )),
      ),
    );
  }

  // login function
  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((uid) => {
                Fluttertoast.showToast(msg: "Login Successful"),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => HomePage())),
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}

//   String name = "";
//   bool changeButton = false;
//   // form key
//   final _formKey = GlobalKey<FormState>();
//   moveToHome(BuildContext context) async {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         changeButton = true;
//       });
//       await Future.delayed(Duration(seconds: 1));
//       await Navigator.pushNamed(context, MyRoutes.HomeRoute);
//       setState(() {
//         changeButton = false;
//       });
//     }
//   }
//   final AuthServices _auth = AuthServices();
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.white,
//       child: Center(
//           child: SingleChildScrollView(
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               Image.asset(
//                 "assets/images/cropped-sp-graphics-white-1024x613.png",
//                 fit: BoxFit.contain,
//                 height: 80,
//               ),
//               Image.asset(
//                 "assets/images/20945597.jpg",
//                 fit: BoxFit.cover,
//                 height: 300,
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               Text("Welcome to Login Page",
//                   style: TextStyle(
//                       fontSize: 26,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.purple)),
//               SizedBox(
//                 height: 20.0,
//               ),
//               Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 16.0, horizontal: 32.0),
//                   child: Column(
//                     children: [
//                       TextFormField(
//                         decoration: InputDecoration(
//                             hintText: "Enter Email",
//                             labelText: "Email",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(50),
//                             )),
//                         validator: (value) {
//                           if (value != null && value.isEmpty) {
//                             return "Username cannot be empty";
//                           }
//                           return null;
//                         },
//                         onChanged: (value) {
//                           name = value;
//                           setState(() {});
//                         },
//                       ),
//                       SizedBox(
//                         height: 20,
//                       ),
//                       TextFormField(
//                         obscureText: true,
//                         decoration: InputDecoration(
//                             hintText: "Enter password",
//                             labelText: "Password",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(50),
//                             )),
//                         validator: (value) {
//                           if (value != null && value.isEmpty) {
//                             return "Password cannot be empty";
//                           } else if (value!.length < 6) {
//                             return "Password length should be atleast 6";
//                           }
//                           return null;
//                         },
//                       ),
//                       SizedBox(
//                         height: 40.0,
//                       ),
//                       Material(
//                         color: Colors.purple,
//                         // borderRadius:
//                         //     BorderRadius.circular(changeButton ? 50 : 8),
//                         borderRadius: BorderRadius.circular(50),
//                         child: InkWell(
//                           onTap: () => moveToHome(context),
//                           child: AnimatedContainer(
//                             duration: Duration(seconds: 1),
//                             // width: changeButton ? 50 : 150,
//                             width: double.infinity,
//                             height: 60,
//                             alignment: Alignment.center,
//                             child: changeButton
//                                 ? Icon(
//                                     Icons.done,
//                                     color: Colors.white,
//                                   )
//                                 : Text(
//                                     "Login",
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18),
//                                   ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ))
//             ],
//           ),
//         ),
//       )),
//     );
//   }
// }

void setState(Null Function() param0) {}
