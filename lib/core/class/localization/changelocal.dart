 import 'package:e_commereceapp/core/class/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocaleController extends GetxController{
Locale? language ;  

MyServices myServices=Get.find();

changeLang(String langcode){
Locale locale=Locale(langcode);
myServices.sharedPrefrance.setString("langur",  langcode);

Get.updateLocale(locale);
}

@override
  void onInit(){

String ?sharedPrefLang=myServices.sharedPrefrance.getString( "lang");
if(sharedPrefLang=="ar"){

language=Locale( "ar");
 }else if (sharedPrefLang == "en"){
      language = const Locale("en")  ;
    }else {
      language = Locale(Get.deviceLocale!.languageCode) ; 
    

}


}


}