import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sensors/sensors.dart';
import 'package:flutter/cupertino.dart';

import '../core/utils/initial_bindings.dart';
import '../localization/app_localization.dart';
import '../routes/app_routes.dart';

class peter_animalDebug extends StatefulWidget {
  @override
  _ShakeState createState() => _ShakeState();
}

class _ShakeState extends State<peter_animalDebug> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Settings'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
    ),
    body: Builder(
        builder: (context) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          translations: AppLocalization(),
          locale: Get.deviceLocale, //for setting localization strings
          fallbackLocale: Locale('en', 'US'),
          initialBinding: InitialBindings(),
          initialRoute: AppRoutes.animalAllScreen,
          getPages: AppRoutes.pages,
        )
    ),
  );
}