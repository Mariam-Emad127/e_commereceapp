import 'package:e_commereceapp/core/class/constants/routes.dart';
import 'package:e_commereceapp/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController  {
  
  next();

  onPageChanged(int index);

}  

class OnBoardingControllerImpl extends OnBoardingController{
  
  late PageController pageController;
  int currentpage=0;
  @override
  next() {
    currentpage++;
 pageController.animateToPage(
  currentpage, duration: Duration(milliseconds: 900),
   curve: Curves.easeInOut);
  
   if (currentpage > onBoardingList.length - 1) {
       Get.offAllNamed(AppRoute.login) ; 
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  
  
  }

  @override
  onPageChanged(int index) {
  currentpage=index;
  update();
  }

@override
  void onInit() {
pageController=PageController();
    super.onInit();
  }


}