import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: <String>["email"]);
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  late String email, password;

  void googleSignIn() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

    if (googleUser == null) {
      Get.snackbar("cancel", "sign in was canceled");
      return null;
    }

    final GoogleSignInAuthentication? googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth!.idToken, accessToken: googleAuth.accessToken);

    await _auth.signInWithCredential(credential);
  }

  void signInWithEmailAndPassword() async {
    try {
      UserCredential usesr = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("error", e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }
}
