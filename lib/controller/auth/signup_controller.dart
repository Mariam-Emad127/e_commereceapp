 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../core/constants/routes.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignIn();
}

class SignUpControllerImp extends SignUpController {
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  signUp() {
    var formdata = formstate.currentState;
   // if (formdata!.validate()) {
      if (formdata != null &&formstate.currentState!.validate()) {
     //if (formdata != null && formdata.validate()) {
      Get.offNamed(AppRoute.verfiyCodeSignUp);
      //Get.delete<SignUpControllerImp>();
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
