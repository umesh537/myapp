import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              "This is about page",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
