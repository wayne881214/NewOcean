
import 'package:get/get.dart';

import '../presentation/animal/animal_all_screen/animal_all_screen.dart';
import '../presentation/animal/animal_all_screen/binding/animal_all_binding.dart';
import '../presentation/animal/animal_clothe_screen/animal_clothe_screen.dart';
import '../presentation/animal/animal_clothe_screen/binding/animal_clothe_binding.dart';
import '../presentation/animal/animal_clothing_screen/animal_clothing_screen.dart';
import '../presentation/animal/animal_clothing_screen/binding/animal_clothing_binding.dart';
import '../presentation/animal/animal_gift_screen/animal_gift_screen.dart';
import '../presentation/animal/animal_gift_screen/binding/animal_gift_binding.dart';
import '../presentation/animal/animal_locked_screen/animal_locked_screen.dart';
import '../presentation/animal/animal_locked_screen/binding/animal_locked_binding.dart';
import '../presentation/animal/animal_main_screen/animal_main_screen.dart';
import '../presentation/animal/animal_main_screen/binding/animal_main_binding.dart';
import '../presentation/animal/animal_unlocked_screen/animal_unlocked_screen.dart';
import '../presentation/animal/animal_unlocked_screen/binding/animal_unlocked_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
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
import '../presentation/task4_screen/binding/task4_binding.dart';
import '../presentation/task4_screen/task4_screen.dart';


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


  static String animalClothingScreen = '/animal_clothing_screen';

  static String animalGiftScreen = '/animal_gift_screen';

  static String animalClotheScreen = '/animal_clothe_screen';

  static String animalMainScreen = '/animal_main_screen';

  static String animalLockedScreen = '/animal_locked_screen';

  static String animalUnlockedScreen = '/animal_unlocked_screen';

  static String animalAllScreen = '/animal_all_screen';


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
    GetPage(
      name: task4Screen,
      page: () => Task4Screen(),
      bindings: [
        Task4Binding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Task1Screen(),
      bindings: [
        Task1Binding(),
      ],
    ),

    GetPage(
      name: animalClothingScreen,
      page: () => AnimalClothingScreen(),
      bindings: [
        AnimalClothingBinding(),
      ],
    ),
    GetPage(
      name: animalGiftScreen,
      page: () => AnimalGiftScreen(),
      bindings: [
        AnimalGiftBinding(),
      ],
    ),
    GetPage(
      name: animalClotheScreen,
      page: () => AnimalClotheScreen(),
      bindings: [
        AnimalClotheBinding(),
      ],
    ),
    GetPage(
      name: animalMainScreen,
      page: () => AnimalMainScreen(),
      bindings: [
        AnimalMainBinding(),
      ],
    ),
    GetPage(
      name: animalLockedScreen,
      page: () => AnimalLockedScreen(),
      bindings: [
        AnimalLockedBinding(),
      ],
    ),
    GetPage(
      name: animalUnlockedScreen,
      page: () => AnimalUnlockedScreen(),
      bindings: [
        AnimalUnlockedBinding(),
      ],
    ),
    GetPage(
      name: animalAllScreen,
      page: () => AnimalAllScreen(),
      bindings: [
        AnimalAllBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
  ];
}
