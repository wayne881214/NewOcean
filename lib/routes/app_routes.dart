// import 'package:peter1421_s_application17/presentation/home_screen/home_screen.dart';
// import 'package:peter1421_s_application17/presentation/home_screen/binding/home_binding.dart';
// import 'package:peter1421_s_application17/presentation/hamburger_screen/hamburger_screen.dart';
// import 'package:peter1421_s_application17/presentation/hamburger_screen/binding/hamburger_binding.dart';
// import 'package:peter1421_s_application17/presentation/task1_screen/task1_screen.dart';
// import 'package:peter1421_s_application17/presentation/task1_screen/binding/task1_binding.dart';
// import 'package:peter1421_s_application17/presentation/task3_1_screen/task3_1_screen.dart';
// import 'package:peter1421_s_application17/presentation/task3_1_screen/binding/task3_1_binding.dart';
// import 'package:peter1421_s_application17/presentation/task3_3_screen/task3_3_screen.dart';
// import 'package:peter1421_s_application17/presentation/task3_3_screen/binding/task3_3_binding.dart';
// import 'package:peter1421_s_application17/presentation/task3_2_screen/task3_2_screen.dart';
// import 'package:peter1421_s_application17/presentation/task3_2_screen/binding/task3_2_binding.dart';
// import 'package:peter1421_s_application17/presentation/task4_screen/task4_screen.dart';
// import 'package:peter1421_s_application17/presentation/task4_screen/binding/task4_binding.dart';
// import 'package:peter1421_s_application17/presentation/app_navigation_screen/app_navigation_screen.dart';
// import 'package:peter1421_s_application17/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/hamburger_screen/binding/hamburger_binding.dart';
import '../presentation/hamburger_screen/hamburger_screen.dart';
import '../presentation/home_screen/binding/home_binding.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/task1_screen/binding/task1_binding.dart';
import '../presentation/task1_screen/task1_screen.dart';
import '../presentation/task3_1_screen/binding/task3_1_binding.dart';
import '../presentation/task3_1_screen/task3_1_screen.dart';
import '../presentation/task3_2_screen/binding/task3_2_binding.dart';
import '../presentation/task3_2_screen/task3_2_screen.dart';
import '../presentation/task3_3_screen/binding/task3_3_binding.dart';
import '../presentation/task3_3_screen/task3_3_screen.dart';
// import '../presentation/task3_1_screen/binding/task3_1_binding.dart';
// import '../presentation/task3_1_screen/task3_1_screen.dart';
// import '../presentation/task4_screen/binding/task4_binding.dart';
// import '../presentation/task4_screen/task4_screen.dart';

class AppRoutes {
  static String homeScreen = '/home_screen';

  static String hamburgerScreen = '/hamburger_screen';

  static String task1Screen = '/task1_screen';

  static String task31Screen = '/task3_1_screen';

  static String task33Screen = '/task3_3_screen';

  static String task32Screen = '/task3_2_screen';

  static String task4Screen = '/task4_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: hamburgerScreen,
      page: () => HamburgerScreen(),
      bindings: [
        HamburgerBinding(),
      ],
    ),
    GetPage(
      name: task1Screen,
      page: () => Task1Screen(),
      bindings: [
        Task1Binding(),
      ],
    ),
    GetPage(
      name: task31Screen,
      page: () => Task31Screen(),
      bindings: [
        Task31Binding(),
      ],
    ),
    GetPage(
      name: task33Screen,
      page: () => Task33Screen(),
      bindings: [
        Task33Binding(),
      ],
    ),
    GetPage(
      name: task32Screen,
      page: () => Task32Screen(),
      bindings: [
        Task32Binding(),
      ],
    ),
    // GetPage(
    //   name: task4Screen,
    //   page: () => Task4Screen(),
    //   bindings: [
    //     Task4Binding(),
    //   ],
    // ),
    // GetPage(
    //   name: appNavigationScreen,
    //   page: () => AppNavigationScreen(),
    //   bindings: [
    //     AppNavigationBinding(),
    //   ],
    // ),
    GetPage(
      name: initialRoute,
      page: () => Task1Screen(),
      bindings: [
        Task1Binding(),
      ],
    )
  ];
}
