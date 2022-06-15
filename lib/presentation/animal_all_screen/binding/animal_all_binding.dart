import '../controller/animal_all_controller.dart';
import 'package:get/get.dart';

class AnimalAllBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimalAllController());
  }
}
