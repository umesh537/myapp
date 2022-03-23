
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    var isSwitched;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.purple,
              )),
        ),
        // body: Center(
        //   child: SingleChildScrollView(
        //     child: Container(
        //       child: Column(
        //         children: [
        //           Column(
        //             children: [
        //               Image.asset(
        //                 "assets/images/cropped-sp-graphics-white-1024x613.png",
        //                 fit: BoxFit.cover,
        //                 height: 80,
        //               ),
        //               SizedBox(
        //                 height: 4,
        //               ),
        //               Text(
        //                 "Welcome to SpGraphics",
        //                 style: TextStyle(fontSize: 10, color: Colors.grey),
        //               )
        //             ],
        //           ),
        //           SizedBox(
        //             height: 4,
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        body: SettingsList(sections: [
          SettingsSection(
            // padding: const EdgeInsets.all(20),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Section 1'),
            ),
            tiles: [
              SettingsTile(
                title: Text('Language'),
                // title: Text('English'),
                leading: Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: Text('Use System Theme'),
                leading: Icon(Icons.phone_android),
                onPressed: isSwitched,
                onToggle: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                }, initialValue: null,
              ),
            ],
          ),
          SettingsSection(
            // titlePadding: EdgeInsets.all(20),
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Section 2'),
            ),
            tiles: [
              SettingsTile(
                title: Text('Security'),
                // subtitle: 'Fingerprint',
                leading: Icon(Icons.lock),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                title: Text('Use fingerprint'),
                leading: Icon(Icons.fingerprint),
                // switchValue: true,
                onToggle: (value) {}, initialValue: null,
              ),
            ],
          ),
        ]));
  }
}

// class SettingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             icon: Icon(
//               Icons.arrow_back,
//               color: Colors.purple,
//             )),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             child: Column(
//               children: [
//                 Column(
//                   children: [
//                     Image.asset(
//                       "assets/images/cropped-sp-graphics-white-1024x613.png",
//                       fit: BoxFit.cover,
//                       height: 80,
//                     ),
//                     SizedBox(
//                       height: 4,
//                     ),
//                     Text(
//                       "Welcome to SpGraphics",
//                       style: TextStyle(fontSize: 10, color: Colors.grey),
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 4,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
