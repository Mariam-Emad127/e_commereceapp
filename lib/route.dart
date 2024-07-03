 import 'package:e_commereceapp/core/constants/routes.dart';
import 'package:e_commereceapp/core/middleware/mymiddleware.dart';
import 'package:e_commereceapp/view/screen/auth/forgetpassword/checkemail.dart';
import 'package:e_commereceapp/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:e_commereceapp/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:e_commereceapp/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:e_commereceapp/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:e_commereceapp/view/screen/auth/login.dart';
 import 'package:e_commereceapp/view/screen/auth/signup.dart';
 import 'package:e_commereceapp/view/screen/auth/success_signup.dart';
import 'package:e_commereceapp/view/screen/language.dart';
 import 'package:e_commereceapp/view/screen/onboarding.dart';
import 'package:e_commereceapp/view/screen/verifycodesignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/* Map<String,Widget Function(BuildContext)>route= {
AppRoute.login:(context)=>Login(),
AppRoute.onBoarding:(context)=>OnBoarding(),
AppRoute.signin:(context)=>SignUp(),
AppRoute.resetPassword:(context)=>ResetPassword(),
AppRoute.forgetPassword:(context)=>ForgetPassword(),
AppRoute.verfiyCode:(context)=>VerfiyCode(),
AppRoute.checkemail: (context) => const CheckEmail(),
AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
AppRoute.successSignUp: (context) => const SuccessSignUp(),
AppRoute.verfiyCodeSignUp:(context)=>VerfiyCodeSignUp(),
 


}; */

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language() , middlewares: [
    MyMiddleWare()
  ]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signin, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.successResetpassword, page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
];
 