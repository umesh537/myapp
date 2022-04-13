import 'package:flutter/material.dart';

class FestivalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              "This is festival page",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
