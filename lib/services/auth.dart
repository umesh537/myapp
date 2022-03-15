import 'package:firebase_auth/firebase_auth.dart';


class AuthServices {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on Firebase
  // User _userFromFirebaseUser(UserCredential user) {
  //   return user != null ? User(uid: user.uid) : null;
  // }

  // sign in anonymous
  Future signInAnonymous() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign in with email & pass

  // register with email pass

  // sign out
}
