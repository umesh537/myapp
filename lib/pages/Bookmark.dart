import 'package:flutter/material.dart';

class BookmarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              "This is Bookmark page",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}




