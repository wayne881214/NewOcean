import '../controller/animal_clothe_controller.dart';
import 'package:get/get.dart';

class AnimalClotheBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimalClotheController());
  }
}
