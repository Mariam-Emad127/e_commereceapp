import 'package:e_commereceapp/core/class/constants/color.dart';
import 'package:e_commereceapp/core/class/localization/changelocal.dart';
import 'package:e_commereceapp/core/class/localization/translation.dart';
import 'package:e_commereceapp/core/class/services/services.dart';
import 'package:e_commereceapp/route.dart';
import 'package:e_commereceapp/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends GetView<LocaleController> {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller =Get.put( LocaleController());
    return GetMaterialApp(
      locale: controller.language,
    translations: MyTranslation(),
      title: 'Flutter Demo',
    theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme: const TextTheme(
            headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 , color: AppColor.black),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 17)),
        primarySwatch: Colors.blue,
      ),
      home: const Language(),
            routes: route,

    );
  }
}
 

