import '../controller/task3_1_controller.dart';
import 'package:get/get.dart';

class Task31Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Task31Controller());
  }
}
