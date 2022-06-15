import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import 'controller/task2_controller.dart';
import 'models/task2_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:peter1421_s_application17/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Task2Page extends StatelessWidget {
  Task2Controller controller = Get.put(Task2Controller(Task2Model().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          right: getHorizontalSize(
            4.00,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                120.00,
              ),
              margin: EdgeInsets.only(
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorConstant.cyan600,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      0.00,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      50.00,
                    ),
                  ),
                  bottomLeft: Radius.circular(
                    getHorizontalSize(
                      0.00,
                    ),
                  ),
                  bottomRight: Radius.circular(
                    getHorizontalSize(
                      50.00,
                    ),
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          14.00,
                        ),
                        top: getVerticalSize(
                          7.00,
                        ),
                        right: getHorizontalSize(
                          14.00,
                        ),
                        bottom: getVerticalSize(
                          3.00,
                        ),
                      ),
                      child: Text(
                        "lbl12".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.textstyleoswaldregular205.copyWith(
                          fontSize: getFontSize(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: getHorizontalSize(
                  341.00,
                ),
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    14.00,
                  ),
                ),
                child: Text(
                  "msg3".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.textstyleoswaldregular206.copyWith(
                    fontSize: getFontSize(
                      20,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    118.00,
                  ),
                  top: getVerticalSize(
                    71.00,
                  ),
                  right: getHorizontalSize(
                    118.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_learn_more".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.textstylerobotoromancondensedregular20
                          .copyWith(
                        fontSize: getFontSize(
                          20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          11.00,
                        ),
                        top: getVerticalSize(
                          6.46,
                        ),
                        bottom: getVerticalSize(
                          5.39,
                        ),
                      ),
                      child: Container(
                        height: getVerticalSize(
                          12.92,
                        ),
                        width: getHorizontalSize(
                          6.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgVector2,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                120.00,
              ),
              margin: EdgeInsets.only(
                top: getVerticalSize(
                  306.23,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorConstant.cyan600,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      0.00,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      50.00,
                    ),
                  ),
                  bottomLeft: Radius.circular(
                    getHorizontalSize(
                      0.00,
                    ),
                  ),
                  bottomRight: Radius.circular(
                    getHorizontalSize(
                      50.00,
                    ),
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          12.00,
                        ),
                        top: getVerticalSize(
                          5.00,
                        ),
                        right: getHorizontalSize(
                          12.00,
                        ),
                        bottom: getVerticalSize(
                          5.00,
                        ),
                      ),
                      child: Text(
                        "lbl13".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.textstyleoswaldregular205.copyWith(
                          fontSize: getFontSize(
                            20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: getHorizontalSize(
                  328.00,
                ),
                margin: EdgeInsets.only(
                  left: getHorizontalSize(
                    10.00,
                  ),
                  top: getVerticalSize(
                    14.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Text(
                  "msg_1".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.textstyleoswaldregular207.copyWith(
                    fontSize: getFontSize(
                      20,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: getVerticalSize(
                  60.77,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        30.00,
                      ),
                      bottom: getVerticalSize(
                        1.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getSize(
                            25.00,
                          ),
                          width: getSize(
                            25.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                5.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray600,
                              width: getHorizontalSize(
                                3.00,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            26.00,
                          ),
                          width: getHorizontalSize(
                            25.00,
                          ),
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              4.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                5.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray600,
                              width: getHorizontalSize(
                                3.00,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            25.00,
                          ),
                          width: getSize(
                            25.00,
                          ),
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              5.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                5.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.gray600,
                              width: getHorizontalSize(
                                3.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        46.00,
                      ),
                      right: getHorizontalSize(
                        2.00,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        30.00,
                      ),
                      top: getVerticalSize(
                        5.00,
                      ),
                      right: getHorizontalSize(
                        30.00,
                      ),
                      bottom: getVerticalSize(
                        5.00,
                      ),
                    ),
                    decoration: AppDecoration.textstyleoswaldregular204,
                    child: Text(
                      "lbl10".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.textstyleoswaldregular204.copyWith(
                        fontSize: getFontSize(
                          20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
