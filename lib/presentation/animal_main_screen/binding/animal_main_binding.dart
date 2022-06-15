import '../controller/animal_main_controller.dart';
import 'package:get/get.dart';

class AnimalMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AnimalMainController());
  }
}
