import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import '../core/utils/initial_bindings.dart';
import '../localization/app_localization.dart';
import '../routes/app_routes.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Tasks'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
    ),
    body: Builder(
      builder: (context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'peter1421_s_application17',
        initialBinding: InitialBindings(),
        initialRoute: AppRoutes.initialRoute,
        getPages: AppRoutes.pages,
      )
    ),
  );
}
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//   ]);
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       translations: AppLocalization(),
//       locale: Get.deviceLocale, //for setting localization strings
//       fallbackLocale: Locale('en', 'US'),
//       title: 'peter1421_s_application17',
//       initialBinding: InitialBindings(),
//       initialRoute: AppRoutes.initialRoute,
//       getPages: AppRoutes.pages,
//     );
//   }
// }

