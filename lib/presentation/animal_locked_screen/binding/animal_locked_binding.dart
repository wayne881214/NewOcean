import '../controller/animal_locked_controller.dart';
import 'package:get/get.dart';

class AnimalLockedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimalLockedController());
  }
}
