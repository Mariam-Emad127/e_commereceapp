 
import 'package:e_commereceapp/core/class/constants/routes.dart';
import 'package:e_commereceapp/view/screen/auth/forgetpassword.dart';
import 'package:e_commereceapp/view/screen/auth/login.dart';
import 'package:e_commereceapp/view/screen/auth/resetpassword.dart';
import 'package:e_commereceapp/view/screen/auth/signup.dart';
import 'package:e_commereceapp/view/screen/auth/verifycode.dart';
import 'package:e_commereceapp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';

Map<String,Widget Function(BuildContext)>route= {
AppRoute.login:(context)=>Login(),
AppRoute.onBoarding:(context)=>OnBoarding(),
AppRoute.signin:(context)=>SignUp(),
AppRoute.resetPassword:(context)=>ResetPassword(),
AppRoute.forgetPassword:(context)=>ForgetPassword(),
AppRoute.verfiyCode:(context)=>VerfiyCode()


};