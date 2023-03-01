// ignore_for_file: avoid_print

import 'package:datacure/repository/authentication_repository/exceptions/signup_email_password_failure.dart';
import 'package:datacure/screens/gettingStarted.dart';
import 'package:datacure/screens/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  // _setInitialScreen(User? user) {
  //   user == null
  //       ? Get.off(() => const GettingStarted())
  //       : Get.off(() => const HomeScreen());
  // }

  _setInitialScreen(User? user) {
    try {
      user == null
          ? Get.off(() => const GettingStarted())
          : Get.off(() => const HomeScreen());
    } catch (e) {
      print('Error while setting initial screen: $e');
    }
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      try {
        firebaseUser.value != null
            ? Get.off(() => const HomeScreen())
            : Get.to(() => const GettingStarted());
      } catch (e) {
        print('Error while setting initial screen: $e');
      }
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;
    }
  }

  // ignore: non_constant_identifier_names
  Future LoginUserWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      try {
        firebaseUser.value != null
            ? Get.off(() => const HomeScreen())
            : Get.to(() => const GettingStarted());
        return 1;
      } catch (e) {
        print('Error while setting initial screen: $e');
        return null;
      }
    } on FirebaseAuthException catch (e) {
      print('Failed with error code: ${e.code}');
      print(e.message);
      return null;
    } catch (e) {
      rethrow;
      return null;
    }
  }

  Future<void> logout() async => await _auth.signOut();
}
