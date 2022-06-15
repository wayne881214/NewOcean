import '../models/task4_model.dart';
import '/core/app_export.dart';
// import 'package:peter1421_s_application17/presentation/task4_screen/models/task4_model.dart';
import 'package:flutter/material.dart';

class Task4Controller extends GetxController
    with GetSingleTickerProviderStateMixin, StateMixin<dynamic> {
  Rx<Task4Model> task4ModelObj = Task4Model().obs;

  late TabController changepageController =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
