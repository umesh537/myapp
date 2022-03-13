import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/Account.dart';
import 'package:myapp/pages/Offers.dart';
import 'package:myapp/pages/Register.dart';
import 'package:myapp/pages/about.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/settings.dart';
import 'package:myapp/pages/welcome.dart';
import 'package:myapp/utils/routes.dart';
import 'package:myapp/widgets/themes.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
        themeMode: ThemeMode.light,
        theme: MyTheme.lightTheme(context),
        debugShowCheckedModeBanner: false,
        darkTheme: MyTheme.darkTheme(context),
        // initialRoute: MyRoutes.HomeRoute,
        initialRoute: MyRoutes.WelcomeRoute,
        routes: {
          "/": (context) => LoginPage(),
          MyRoutes.HomeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.SignupRoute: (context) => SignUpPage(),
          MyRoutes.WelcomeRoute: (context) => WelcomePage(),
          MyRoutes.AboutRoute: (context) => AboutPage(),
          MyRoutes.OfferRoute: (context) => OffersPage(),
          MyRoutes.SettingsRoute: (context) => SettingPage(),
          MyRoutes.AccountRoute: (context) => AccountPage(),
        }
    );
  }
}







