import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
import 'package:myapp/pages/Authenticate/login_page.dart';
import 'package:myapp/pages/home/home.dart';

class BottomNavigation extends StatelessWidget {
  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.person),
    Icon(Icons.settings),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
            // title: const Text('BottomNavigationBar Sample'),
            ),
        body: Center(
          child: body[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (int newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home)  
              ),
              BottomNavigationBarItem(
                  label: 'Profile', icon: Icon(Icons.person)),
              BottomNavigationBarItem(
                  label: 'Setting', icon: Icon(Icons.settings)),
            ]),
      ),
      onWillPop: () async {
        return false;
      },
    );
  }
}
