import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserController extends GetxController {
  void showSnackbar(String title) {
    Get.showSnackbar(GetBar(
      message: title,
    ));
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<bool> loginWhitGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      var result = await _auth.signInWithCredential(credential);
      printInfo(info: result.user!.displayName!);
      updateUserData(result.user!);
      return result.user!.displayName == null ? false : true;
    } catch (e) {
      print('==========ERROR====================');
      showSnackbar('Hubo un error $e');

      return false;
    }
  }

  void updateUserData(User user) async {
    DocumentReference ref = _db.collection('users').doc(user.uid);

    return ref.set(
      {
        'uid': user.uid,
        'name': user.displayName,
        'email': user.email,
        'photoURL': user.photoURL,
        'lastSignIn': DateTime.now(),
        'cupo': []
      },
      SetOptions(merge: true),
    );
  }
}
