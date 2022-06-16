import '../controller/animal_clothing_controller.dart';
import 'package:get/get.dart';

class AnimalClothingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimalClothingController());
  }
}
