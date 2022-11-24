import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ward/utils/color_manager.dart';
import 'package:ward/view/home_view.dart';

class AuthViewModel extends GetxController {
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String email, name, password;

  // final Rx<User> _user = Rx<User>();
  final Rxn<User> _user = Rxn<User>();

  String? get user => _user.value?.email;

  @override
  void onInit() {
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication? googleSignInAuthentication =
        await googleUser?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication?.idToken,
      accessToken: googleSignInAuthentication?.accessToken,
    );

    await _auth.signInWithCredential(credential);

    // await _auth.signInWithCredential(credential).then((user) {
    //   saveUser(user);
    //   Get.offAll(HomeView());
    // });
  }

  void facebookSignInMethod() async {
    final AccessToken result =
        (await FacebookAuth.instance.login()) as AccessToken;

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(result.token);

    await _auth.signInWithCredential(facebookAuthCredential);
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(const HomeView());
    } catch (e) {
      print(e.toString());
      Get.snackbar(
        'Error login account',
        e.toString(),
        colorText: ColorManager.black,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

// void createAccountWithEmailAndPassword() async {
//   try {
//     await _auth
//         .createUserWithEmailAndPassword(email: email, password: password)
//         .then((user) async {
//       saveUser(user);
//     });
//
//     Get.offAll(HomeView());
//   } catch (e) {
//     print(e.message);
//     Get.snackbar(
//       'Error login account',
//       e.message,
//       colorText: Colors.black,
//       snackPosition: SnackPosition.BOTTOM,
//     );
//   }
// }
//
// void saveUser(UserCredential user) async {
//   await FireStoreUser().addUserToFireStore(UserModel(
//     userId: user.user.uid,
//     email: user.user.email,
//     name: name == null ? user.user.displayName : name,
//     pic: '',
//   ));
// }
}
