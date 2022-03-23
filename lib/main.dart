import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/pages/sidebar/Account.dart';
import 'package:myapp/pages/sidebar/Offers.dart';
import 'package:myapp/pages/Authenticate/Register.dart';
import 'package:myapp/pages/sidebar/about.dart';
import 'package:myapp/pages/home/home.dart';
import 'package:myapp/pages/Authenticate/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/sidebar/settings.dart';
import 'package:myapp/pages/welcome.dart';
import 'package:myapp/utils/routes.dart';
import 'package:myapp/widgets/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        initialRoute: MyRoutes.HomeRoute,
        // initialRoute: MyRoutes.WelcomeRoute,
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
        });
  }
}
