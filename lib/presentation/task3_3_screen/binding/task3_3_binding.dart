import '../controller/task3_3_controller.dart';
import 'package:get/get.dart';

class Task33Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Task33Controller());
  }
}
