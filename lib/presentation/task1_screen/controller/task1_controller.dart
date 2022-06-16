import '../models/task1_model.dart';
import '/core/app_export.dart';
// import 'package:peter1421_s_application17/presentation/task1_screen/models/task1_model.dart';

class Task1Controller extends GetxController with StateMixin<dynamic> {
  Rx<Task1Model> task1ModelObj = Task1Model().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
