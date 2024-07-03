 
import 'package:e_commereceapp/biniding/intialbindings.dart';
import 'package:e_commereceapp/route.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/localization/changelocal.dart';
import 'core/localization/translation.dart';
import 'core/services/services.dart';

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
    theme: controller.themeData,
    initialBinding: InitialBindings(),
    //  home: const Language(),
        //    routes: route,
getPages: routes,
    );
  }
}
 

