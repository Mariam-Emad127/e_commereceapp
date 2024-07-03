 
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/apptheme.dart';
import '../services/services.dart';

class LocaleController extends GetxController{
Locale? language ;  

MyServices myServices=Get.find();
ThemeData themeData=themeEnglish;
changeLang(String langcode){
Locale locale=Locale(langcode);
myServices.sharedPrefrance.setString("langur",  langcode);

Get.updateLocale(locale);
}

@override
  void onInit(){

String ?sharedPrefLang=myServices.sharedPrefrance.getString( "lang");
if(sharedPrefLang=="ar"){
themeData=themeArabic;
language=Locale( "ar");
 }else if (sharedPrefLang == "en"){
      language = const Locale("en");
      themeData=themeEnglish  ;
    }else {
      language = Locale(Get.deviceLocale!.languageCode) ; 
     themeData=themeEnglish  ;

}


}


}