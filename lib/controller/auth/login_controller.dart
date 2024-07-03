 import 'package:e_commereceapp/core/constants/routes.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController{
  login();

  goToSignUP();

goToForgetPassword();


}
class LoginControllerImpl extends LoginController{
  GlobalKey<FormState>formstate=GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;

  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }
  @override
  login() {
    var formdata=formstate.currentState;
    /* if(formdata!.validate()){

         print("Valid");
    } else {
      print("Not Valid");
    }
    } */
  }
  
  @override
  void onInit() {
  email=TextEditingController();
  password=TextEditingController();
  }
  @override
  goToSignUP() {
 Get.offAllNamed(AppRoute.signin );  
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