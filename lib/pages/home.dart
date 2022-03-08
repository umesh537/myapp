// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:myapp/pages/mainbody.dart';
import 'package:myapp/widgets/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '_carousel.dart';
import 'header.dart';

class HomePage extends StatelessWidget {
  var callbackFunction;

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
              // child: Text("Lets get Started"),
              ),
          FirstCarousel()
        ],
      ),
      drawer: MyDrawer(),
    );
  }

  
}
