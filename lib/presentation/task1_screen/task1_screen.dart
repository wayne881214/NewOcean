import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:newocean/presentation/task1_screen/widgets/task_template.dart';
import 'package:newocean/presentation/task1_screen/widgets/task_template2.dart';
import 'package:newocean/presentation/task1_screen/widgets/task_template3.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../task1_screen/widgets/group59_item_widget.dart';
import 'controller/task1_controller.dart';
import 'models/group59_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:peter1421_s_application17/core/app_export.dart';

class Task1Screen extends GetWidget<Task1Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              //生成任務模塊(修改 return )
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(5.00),
                                          top: getVerticalSize(30.00),
                                          right: getHorizontalSize(5.00)),
                                      child: Obx(() => ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller.task1ModelObj
                                              .value.group59ItemList.length,
                                          //重複數量
                                          itemBuilder: (context, index) {
                                            Group59ItemModel model = controller
                                                .task1ModelObj
                                                .value
                                                .group59ItemList[index];
                                            return task_template2(model);//
                                          })))),


                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(5.00),
                                          top: getVerticalSize(30.00),
                                          right: getHorizontalSize(5.00)),
                                      child: Obx(() => ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller.task1ModelObj
                                              .value.group59ItemList.length,
                                          //重複數量
                                          itemBuilder: (context, index) {
                                            Group59ItemModel model = controller
                                                .task1ModelObj
                                                .value
                                                .group59ItemList[index];
                                            return task_template3(model);//
                                          }))))
                            ]))))));
  }

  onTapImgX() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapGroup51() {
    Get.toNamed(AppRoutes.task4Screen);
  }

  onTapTxttf() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "system", middleText: "great!");
  }
}
