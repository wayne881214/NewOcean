import '../controller/hamburger_controller.dart';
import 'package:get/get.dart';

class HamburgerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HamburgerController());
  }
}
