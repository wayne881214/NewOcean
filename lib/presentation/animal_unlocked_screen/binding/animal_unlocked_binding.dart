import '../controller/animal_unlocked_controller.dart';
import 'package:get/get.dart';

class AnimalUnlockedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimalUnlockedController());
  }
}
