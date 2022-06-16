import '../controller/task4_controller.dart';
import 'package:get/get.dart';

class Task4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Task4Controller());
  }
}
