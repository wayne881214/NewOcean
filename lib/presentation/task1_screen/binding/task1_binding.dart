import '../controller/task1_controller.dart';
import 'package:get/get.dart';

class Task1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Task1Controller());
  }
}
