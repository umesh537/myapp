import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
  get blurRadius => null;

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: const Radius.circular(50),
              ),
              color: Colors.purple,
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 80,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: const Radius.circular(50),
                            bottomRight: const Radius.circular(50),
                          )),
                    )),
                const Positioned(
                    top: 115,
                    left: 20,
                    child: const Text(
                      "Our Services",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          ),
          SizedBox(
            // height: height * 0.05,
            height: 5,
          ),
          // Center(
          //   child: Container(
          //     height: 230,
          //     child: Stack(
          //       children: [
          //         Positioned(
          //             left: 20,
          //             child: Material(
          //               child: Container(
          //                 height: 180.0,
          //                 width: width * 0.9,
          //                 decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   borderRadius: BorderRadius.circular(0.0),
          //                   boxShadow: [
          //                     //BoxShadow
          //                     BoxShadow(
          //                       color: Colors.grey,
          //                       offset: const Offset(-10.0, 10.0),
          //                       blurRadius: 20.0,
          //                       spreadRadius: 4.0,
          //                     ), //BoxShadow
          //                   ],
          //                 ),
          //               ),
          //             )),
          //         Positioned(
          //             child: Container(
          //           width: 280,
          //           decoration: BoxDecoration(
          //               image: DecorationImage(
          //                   fit: BoxFit.fill,
          //                   image: AssetImage(
          //                       "assets/images/Shiva-Wallpaper-blue-purple-sky.jpg"))),
          //         ))
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            
              child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 25),
                height: 200,
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(80)),
                      boxShadow: [
                        new BoxShadow(
                            color: Color(0xFF363f93).withOpacity(0.3),
                            offset: new Offset(-10, 0),
                            blurRadius: 20,
                            spreadRadius: 4),
                      ]),
                  padding: const EdgeInsets.only(left: 32, top: 50, bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Festival Templates",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "All types of festivals templates for all Indian Festivals",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 25),
                height: 200,
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(80)),
                      boxShadow: [
                        new BoxShadow(
                            color: Color(0xFF363f93).withOpacity(0.3),
                            offset: new Offset(-10, 0),
                            blurRadius: 20,
                            spreadRadius: 4),
                      ]),
                  padding: const EdgeInsets.only(left: 32, top: 50, bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Logo Design",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "All types of festivals templates for all Indian Festivals",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 25),
                height: 200,
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(80)),
                      boxShadow: [
                        new BoxShadow(
                            color: Color(0xFF363f93).withOpacity(0.3),
                            offset: new Offset(-10, 0),
                            blurRadius: 20,
                            spreadRadius: 4),
                      ]),
                  padding: const EdgeInsets.only(left: 32, top: 50, bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Web Development",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "All types of festivals templates for all Indian Festivals",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10, top: 25),
                height: 200,
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(80)),
                      boxShadow: [
                        new BoxShadow(
                            color: Color(0xFF363f93).withOpacity(0.3),
                            offset: new Offset(-10, 0),
                            blurRadius: 20,
                            spreadRadius: 4),
                      ]),
                  padding: const EdgeInsets.only(left: 32, top: 50, bottom: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Digital Marketing",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "All types of festivals templates for all Indian Festivals",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
