import 'package:datacure/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  loginUser(String email, String password) {
    AuthenticationRepository.instance
        .LoginUserWithEmailAndPassword(email, password);
  }
}
