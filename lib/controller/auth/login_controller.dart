import 'package:e_commereceapp/core/class/constants/routes.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  login();

  goToSignUP();

goToForgetPassword();


}
class LoginControllerImpl extends LoginController{
  late TextEditingController email;
  late TextEditingController password;
  @override
  login() {
    

  }
  @override
  void onInit() {
  email=TextEditingController();
  password=TextEditingController();
  }
  @override
  goToSignUP() {
 Get.toNamed(AppRoute.signin );  
   }

     @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }

   @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}