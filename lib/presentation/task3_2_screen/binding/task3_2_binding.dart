import '../controller/task3_2_controller.dart';
import 'package:get/get.dart';

class Task32Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Task32Controller());
  }
}
