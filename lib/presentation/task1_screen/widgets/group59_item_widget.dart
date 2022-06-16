import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/math_utils.dart';
import '../../../theme/app_style.dart';
import '../controller/task1_controller.dart';
import '../models/group59_item_model.dart';
import 'package:flutter/material.dart';
// import 'package:peter1421_s_application17/core/app_export.dart';

// ignore: must_be_immutable
class Group59ItemWidget extends StatelessWidget {
  Group59ItemWidget(this.group59ItemModelObj);

  Group59ItemModel group59ItemModelObj;

  var controller = Get.find<Task1Controller>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(
            15.00,
          ),
          right: getHorizontalSize(
            2.00,
          ),
          bottom: getVerticalSize(
            15.00,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
          border: Border.all(
            color: ColorConstant.black90019,
            width: getHorizontalSize(
              3.00,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    20.00,
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
                          26.00,
                        ),
                      ),
                      child: Image.asset(
                        ImageConstant.imgCoralg1e76e727,
                        height: getVerticalSize(
                          124.45,
                        ),
                        width: getHorizontalSize(
                          79.00,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          7.00,
                        ),
                        right: getHorizontalSize(
                          13.00,
                        ),
                        bottom: getVerticalSize(
                          0.45,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                1.00,
                              ),
                              right: getHorizontalSize(
                                10.00,
                              ),
                            ),
                            child: Text(
                              "lbl_save_the_coral".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular20
                                  .copyWith(
                                fontSize: getFontSize(
                                  20,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              217.00,
                            ),
                            margin: EdgeInsets.only(
                              top: getVerticalSize(
                                13.00,
                              ),
                            ),
                            child: Text(
                              "msg_bring_your_own".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.textstylerobotoromanregular14
                                  .copyWith(
                                fontSize: getFontSize(
                                  14,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                28.65,
                              ),
                              top: getVerticalSize(
                                22.00,
                              ),
                              right: getHorizontalSize(
                                28.65,
                              ),
                            ),
                            child: Text(
                              "lbl_502".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.textstylepoppinsregular20.copyWith(
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
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                top: getVerticalSize(
                  8.55,
                ),
                right: getHorizontalSize(
                  10.00,
                ),
                bottom: getVerticalSize(
                  15.00,
                ),
              ),
              child: Container(
                height: getVerticalSize(
                  14.00,
                ),
                width: getHorizontalSize(
                  331.65,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.gray400,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      7.00,
                    ),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      7.00,
                    ),
                  ),
                  child: LinearProgressIndicator(
                    value: 0.49,
                    backgroundColor: ColorConstant.gray400,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      ColorConstant.orange300,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
