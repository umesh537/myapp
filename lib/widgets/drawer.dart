import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/sidebar/Account.dart';
import 'package:myapp/pages/sidebar/Offers.dart';
import 'package:myapp/pages/sidebar/about.dart';
import 'package:myapp/pages/home/home.dart';
import 'package:myapp/pages/Authenticate/login_page.dart';
import 'package:myapp/pages/sidebar/plans.dart';
import 'package:myapp/pages/sidebar/settings.dart';
import 'package:myapp/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  // String name = "";
  // bool changeButton = false;
  // final _formKey = GlobalKey<FormState>();

  // moveToAbout(BuildContext context) async {
  //   if (_formKey.currentState!.validate()) {
  //     setState(() {
  //       changeButton = true;
  //     });
  //     await Future.delayed(Duration(seconds: 1));
  //     await Navigator.pushNamed(context, MyRoutes.AboutRoute);
  //     setState(() {
  //       changeButton = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Umesh Suryavanshi"),
                accountEmail: Text("abc@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            TextButton(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            TextButton(
              child: ListTile(
                leading: Icon(
                  Icons.local_offer_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  "Offers",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OffersPage()));
              },
            ),
            TextButton(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.pencil_circle,
                  color: Colors.white,
                ),
                title: Text(
                  "My Plans",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AllPlans()));
              },
            ),
            TextButton(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text(
                  "My Account",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountPage()));
              },
            ),
            TextButton(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  "MailBox",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },
            ),
            TextButton(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.settings,
                  color: Colors.white,
                ),
                title: Text(
                  "Settings",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },
            ),
            TextButton(
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.person_3_fill,
                  color: Colors.white,
                ),
                title: Text(
                  "About Us",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutPage()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                "Logout",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
