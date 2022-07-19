import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final GoogleSignIn _signIn = GoogleSignIn();

  Future<User?> login() async {
    var signInResult = await _signIn.signIn();
    if (signInResult != null) {
      var googleAuthentication = await signInResult.authentication;
      var authCredential = GoogleAuthProvider.credential(
          accessToken: googleAuthentication.accessToken,
          idToken: googleAuthentication.idToken);
      var user =
          await FirebaseAuth.instance.signInWithCredential(authCredential);
      return user.user;
    }
    return null;
  }

  User? getCurrentUser() {
    return FirebaseAuth.instance.currentUser;
  }

  Future<void> logoff() async {
    if (await _signIn.isSignedIn()) _signIn.signOut();
    if (FirebaseAuth.instance.currentUser != null) {
      await FirebaseAuth.instance.signOut();
    }
  }
}
