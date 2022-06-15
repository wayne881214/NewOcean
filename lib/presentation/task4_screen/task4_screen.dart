import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../theme/app_style.dart';
import '../task2_page/task2_page.dart';
import '../task3_page/task3_page.dart';
import 'controller/task4_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:peter1421_s_application17/core/app_export.dart';
// import 'package:peter1421_s_application17/presentation/task2_page/task2_page.dart';
// import 'package:peter1421_s_application17/presentation/task3_page/task3_page.dart';

class Task4Screen extends GetWidget<Task4Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: ColorConstant.cyan600,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        26.00,
                      ),
                      top: getVerticalSize(
                        45.00,
                      ),
                      right: getHorizontalSize(
                        93.00,
                      ),
                      bottom: getVerticalSize(
                        17.00,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              2.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              16.00,
                            ),
                            width: getHorizontalSize(
                              12.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgVector4,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              55.00,
                            ),
                          ),
                          child: Text(
                            "lbl_save_the_turtle".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.textstylerobotoromanbold30.copyWith(
                              fontSize: getFontSize(
                                30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        14.00,
                      ),
                      bottom: getVerticalSize(
                        29.23,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          20.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              350.00,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  25.00,
                                ),
                              ),
                              border: Border.all(
                                color: ColorConstant.bluegray100,
                                width: getHorizontalSize(
                                  0.30,
                                ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: ColorConstant.black9003f,
                                  spreadRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  blurRadius: getHorizontalSize(
                                    2.00,
                                  ),
                                  offset: Offset(
                                    0,
                                    4,
                                  ),
                                ),
                              ],
                            ),
                            child: TabBar(
                              controller: controller.changepageController,
                              tabs: [
                                Tab(
                                  text: "lbl_issue".tr,
                                ),
                                Tab(
                                  text: "lbl_task".tr,
                                ),
                                Tab(
                                  text: "lbl_other".tr,
                                ),
                              ],
                              labelColor: ColorConstant.lightBlue900,
                              unselectedLabelColor: ColorConstant.lightBlue900,
                              indicator: BoxDecoration(
                                color: ColorConstant.yellow200,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(
                                    getHorizontalSize(
                                      25.00,
                                    ),
                                  ),
                                  topRight: Radius.circular(
                                    getHorizontalSize(
                                      0.00,
                                    ),
                                  ),
                                  bottomLeft: Radius.circular(
                                    getHorizontalSize(
                                      25.00,
                                    ),
                                  ),
                                  bottomRight: Radius.circular(
                                    getHorizontalSize(
                                      0.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: getVerticalSize(
                                14.00,
                              ),
                            ),
                            height: getVerticalSize(
                              866.77,
                            ),
                            child: TabBarView(
                              controller: controller.changepageController,
                              children: [
                                Task2Page(),
                                Task3Page(),
                                Task3Page(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
