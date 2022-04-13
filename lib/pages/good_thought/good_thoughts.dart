import 'package:flutter/material.dart';

class ThoughtPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              "This is good thought page",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
