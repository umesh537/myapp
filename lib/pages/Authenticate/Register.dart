import 'package:flutter/material.dart';
import 'package:myapp/pages/home/header.dart';
import 'package:myapp/pages/Authenticate/login_page.dart';
import 'package:myapp/utils/routes.dart';
import 'package:myapp/widgets/drawer.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Our form key
  final _formKey = GlobalKey<FormState>();

  // Editing Controller
  final firstNameEditingController = new TextEditingController();
  final lastNameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final numberEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confirmPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //First Name field
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      // validator: () {},
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 15),
          hintText: "Enter Your First Name",
          labelText: "First Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    //last Name field
    final lastNameField = TextFormField(
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
      // validator: () {},
      onSaved: (value) {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 15),
          hintText: "Enter Your Last Name",
          labelText: "Last Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    //email field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      // validator: () {},
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 15),
          hintText: "Enter Your Email",
          labelText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    //Number field
    final numberField = TextFormField(
      autofocus: false,
      controller: numberEditingController,
      keyboardType: TextInputType.number,
      // validator: () {},
      onSaved: (value) {
        numberEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.phone),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 15),
          hintText: "Enter Your Mobile Number",
          labelText: "Mobile",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    //Password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      keyboardType: TextInputType.visiblePassword,
      // validator: () {},
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 15),
          hintText: "Enter Your Password",
          labelText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    //Confirm Password field
    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmPasswordEditingController,
      obscureText: true,
      // validator: () {},
      onSaved: (value) {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 15),
          hintText: "Confirm Your Password",
          labelText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    );

    //signup button
    final signUpButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.purple,
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {},
          child: Text(
            "SignUp",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          )),
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
            )
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Image.asset(
                        "assets/images/cropped-sp-graphics-white-1024x613.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/images/Wavy_Gen-01_Single-07.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 20),
                    firstNameField,
                    SizedBox(height: 10),
                    lastNameField,
                    SizedBox(height: 10),
                    emailField,
                    SizedBox(height: 10),
                    numberField,
                    SizedBox(height: 10),
                    passwordField,
                    SizedBox(height: 10),
                    confirmPasswordField,
                    SizedBox(height: 10),
                    signUpButton,
                    SizedBox(height: 20),
                  ],
                )),
          ),
        )),
      ),
    );
  }
}

// class SignUpPage extends StatelessWidget {
//   String name = "";
//   bool changeButton = false;
//   final _formKey = GlobalKey<FormState>();
//   moveToLogin(BuildContext context) async {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         changeButton = true;
//       });
//       await Future.delayed(Duration(seconds: 1));
//       await Navigator.pushNamed(context, MyRoutes.loginRoute);
//       setState(() {
//         changeButton = false;
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SafeArea(
//       child: SingleChildScrollView(
//         child: Container(
//           margin: EdgeInsets.only(top: 20),
//           color: Colors.white,
//           width: double.infinity,
//           height: MediaQuery.of(context).size.height,
//           child: Column(
//             children: [
//               Image.asset(
//                 "assets/images/Wavy_Gen-01_Single-07.jpg",
//                 fit: BoxFit.cover,
//                 height: 300,
//               ),
//               Column(
//                 children: [
//                   Text(
//                     "Sign Up",
//                     style: TextStyle(
//                         color: Colors.purple,
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 16.0, horizontal: 32.0),
//                 child: Column(
//                   children: [
//                     TextFormField(
//                       decoration: InputDecoration(
//                           hintText: "Enter Your Complete Name",
//                           labelText: "Name",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(50),
//                           )),
//                       validator: (value) {
//                         if (value != null && value.isEmpty) {
//                           return "Name cannot be empty";
//                         }
//                         return null;
//                       },
//                       onChanged: (value) {
//                         name = value;
//                         setState(() {});
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(
//                           hintText: "Enter Your Email Id",
//                           labelText: "Email",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(50),
//                           )),
//                       validator: (value) {
//                         if (value != null && value.isEmpty) {
//                           return "Email cannot be empty";
//                         }
//                         return null;
//                       },
//                       onChanged: (value) {
//                         name = value;
//                         setState(() {});
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       decoration: InputDecoration(
//                           hintText: "Enter Your Mobile No.",
//                           labelText: "Number",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(50),
//                           )),
//                       validator: (value) {
//                         if (value != null && value.isEmpty) {
//                           return "Number cannot be empty";
//                         }
//                         return null;
//                       },
//                       onChanged: (value) {
//                         name = value;
//                         setState(() {});
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     TextFormField(
//                       obscureText: true,
//                       decoration: InputDecoration(
//                           hintText: "Enter password",
//                           labelText: "Password",
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(50),
//                           )),
//                       validator: (value) {
//                         if (value != null && value.isEmpty) {
//                           return "Password cannot be empty";
//                         } else if (value!.length < 6) {
//                           return "Password length should be atleast 6";
//                         }
//                         return null;
//                       },
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     MaterialButton(
//                       minWidth: double.infinity,
//                       height: 60,
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => LoginPage()));
//                       },
//                       color: Colors.purple,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(50)),
//                       child: Text(
//                         "Sign Up",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w600,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }
