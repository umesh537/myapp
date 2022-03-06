// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:myapp/pages/mainbody.dart';
import 'package:myapp/widgets/drawer.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '_carousel.dart';

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
          Container(
              // child: Text("Lets get Started"),
              ),
          FirstCarousel()
        ],
      ),
      drawer: MyDrawer(),
    );
  }

  _carousel() {
    return ListView(children: <Widget>[
      SizedBox(
        height: 15.0,
      ),
      CarouselSlider(
        options: CarouselOptions(
          height: 180.0,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ),
        items: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage("assets\images\1639112487.webp"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    ]);
  }
}
