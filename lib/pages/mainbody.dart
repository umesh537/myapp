import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstCarousel extends StatelessWidget {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(children: [
      Container(
        height: 220,
        margin: EdgeInsets.only(left: 10, right: 10, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/Shiva-Wallpaper-blue-purple-sky.jpg"))),
      ),
      Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Container(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Title of the picture",
                  style: TextStyle(fontSize: 20),),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => Icon(
                                  Icons.star,
                                  color: Colors.green,
                                  size: 16,
                                )),
                      ),
                      SizedBox(width: 10,),
                      Text("4.5",
                      style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10,),
                      Text("1287",
                      style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 10,),
                      Text("comments",
                      style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ))
    ]);
  }
}
