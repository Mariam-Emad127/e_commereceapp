import 'package:e_commereceapp/controller/onboarding_controller.dart';
import 'package:e_commereceapp/core/class/constants/color.dart';
import 'package:e_commereceapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  
       PageView.builder(
        controller: controller.pageController,
        onPageChanged: (value) {
          controller.onPageChanged(value);
        //  print(value);
        },
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Column(
                children: [
                  Text(onBoardingList[i].title!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  const SizedBox(height: 80),
                  Image.asset(
                    onBoardingList[i].image!,
                    width: 200,
                    height: 230,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(height: 80),
                  Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        onBoardingList[i].body!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            height: 2,
                            color: AppColor.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      )),
                ],
              )
    );
  }
}