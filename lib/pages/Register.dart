import 'package:flutter/material.dart';
import 'package:myapp/pages/header.dart';
import 'package:myapp/widgets/drawer.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Column(
        children: [
          Header(),
          Container(
              child: Text("This is the SignUp Page"),
              ),
        ],
      ),
      // drawer: MyDrawer(),
    );
  }
}
