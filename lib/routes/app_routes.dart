// import 'package:peter1421_s_application21/presentation/animal_clothing_screen/animal_clothing_screen.dart';
// import 'package:peter1421_s_application21/presentation/animal_clothing_screen/binding/animal_clothing_binding.dart';
// import 'package:peter1421_s_application21/presentation/animal_gift_screen/animal_gift_screen.dart';
// import 'package:peter1421_s_application21/presentation/animal_gift_screen/binding/animal_gift_binding.dart';
// import 'package:peter1421_s_application21/presentation/animal_clothe_screen/animal_clothe_screen.dart';
// import 'package:peter1421_s_application21/presentation/animal_clothe_screen/binding/animal_clothe_binding.dart';
// import 'package:peter1421_s_application21/presentation/animal_main_screen/animal_main_screen.dart';
// import 'package:peter1421_s_application21/presentation/animal_main_screen/binding/animal_main_binding.dart';
// import 'package:peter1421_s_application21/presentation/animal_locked_screen/animal_locked_screen.dart';
// import 'package:peter1421_s_application21/presentation/animal_locked_screen/binding/animal_locked_binding.dart';
// import 'package:peter1421_s_application21/presentation/animal_unlocked_screen/animal_unlocked_screen.dart';
// import 'package:peter1421_s_application21/presentation/animal_unlocked_screen/binding/animal_unlocked_binding.dart';
// import 'package:peter1421_s_application21/presentation/animal_all_screen/animal_all_screen.dart';
// import 'package:peter1421_s_application21/presentation/animal_all_screen/binding/animal_all_binding.dart';
// import 'package:peter1421_s_application21/presentation/app_navigation_screen/app_navigation_screen.dart';
// import 'package:peter1421_s_application21/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/animal_all_screen/animal_all_screen.dart';
import '../presentation/animal_all_screen/binding/animal_all_binding.dart';
import '../presentation/animal_clothe_screen/animal_clothe_screen.dart';
import '../presentation/animal_clothe_screen/binding/animal_clothe_binding.dart';
import '../presentation/animal_clothing_screen/animal_clothing_screen.dart';
import '../presentation/animal_clothing_screen/binding/animal_clothing_binding.dart';
import '../presentation/animal_gift_screen/animal_gift_screen.dart';
import '../presentation/animal_gift_screen/binding/animal_gift_binding.dart';
import '../presentation/animal_locked_screen/animal_locked_screen.dart';
import '../presentation/animal_locked_screen/binding/animal_locked_binding.dart';
import '../presentation/animal_main_screen/animal_main_screen.dart';
import '../presentation/animal_main_screen/binding/animal_main_binding.dart';
import '../presentation/animal_unlocked_screen/animal_unlocked_screen.dart';
import '../presentation/animal_unlocked_screen/binding/animal_unlocked_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
// import '../presentation/animal_clothing_screen/animal_clothing_screen.dart';
// import '../presentation/animal_clothing_screen/binding/animal_clothing_binding.dart';

class AppRoutes {
  static String animalClothingScreen = '/animal_clothing_screen';

  static String animalGiftScreen = '/animal_gift_screen';

  static String animalClotheScreen = '/animal_clothe_screen';

  static String animalMainScreen = '/animal_main_screen';

  static String animalLockedScreen = '/animal_locked_screen';

  static String animalUnlockedScreen = '/animal_unlocked_screen';

  static String animalAllScreen = '/animal_all_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
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
    GetPage(
      name: initialRoute,
      page: () => AnimalAllScreen(),
      bindings: [
        AnimalAllBinding(),
      ],
    )
  ];
}
