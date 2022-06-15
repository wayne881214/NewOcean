import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../core/utils/initial_bindings.dart';
import '../localization/app_localization.dart';
import '../routes/app_routes.dart';

class AnimalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Animals'),
          centerTitle: true,
          backgroundColor: Color(0xFF00BFA5),
        ),body:GetMaterialApp(
            debugShowCheckedModeBanner: false,
            translations: AppLocalization(),
            locale: Get.deviceLocale, //for setting localization strings
            fallbackLocale: Locale('en', 'US'),
            title: 'peter1421_s_application21',
            initialBinding: InitialBindings(),
            initialRoute: AppRoutes.initialRoute,
            getPages: AppRoutes.pages,
        )
      );
}
