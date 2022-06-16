import '../controller/animal_gift_controller.dart';
import 'package:get/get.dart';

class AnimalGiftBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimalGiftController());
  }
}
