import 'package:e_commereceapp/controller/onboarding_controller.dart';
import 'package:e_commereceapp/core/class/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 40,
      child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
controller.next();

          },
          color: AppColor.primaryColor,
          child: const Text("Continue")),
    );
  }
}