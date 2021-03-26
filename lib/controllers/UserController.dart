import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserController extends GetxController {
  void showSnackbar(String title) {
    Get.showSnackbar(GetBar(
      message: title,
    ));
  }

  Future<UserCredential> loginWhitGoogle() async {
    try {
      final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final GoogleAuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );

      return FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print('==========ERROR====================');
      showSnackbar('Hubo un error');
      print(e);
    }
  }
}
