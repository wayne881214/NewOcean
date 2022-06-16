import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/math_utils.dart';
import '../../../../theme/app_style.dart';
import 'package:flutter/material.dart';

import '../controller/animal_locked_controller.dart';
import '../models/animal_locked_item_model.dart';

// ignore: must_be_immutable
class AnimalLockedItemWidget extends StatelessWidget {
  AnimalLockedItemWidget(this.animalLockedItemModelObj);

  AnimalLockedItemModel animalLockedItemModelObj;

  var controller = Get.find<AnimalLockedController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        186.00,
      ),
      width: getHorizontalSize(
        364.00,
      ),
      margin: EdgeInsets.only(
        top: getVerticalSize(
          8.50,
        ),
        bottom: getVerticalSize(
          8.50,
        ),
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: getHorizontalSize(
                205.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  10.00,
                ),
                bottom: getVerticalSize(
                  10.00,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      145.00,
                    ),
                    width: getHorizontalSize(
                      144.00,
                    ),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: getVerticalSize(
                              145.00,
                            ),
                            width: getHorizontalSize(
                              144.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgGroup571,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                39.50,
                              ),
                              right: getHorizontalSize(
                                34.50,
                              ),
                            ),
                            child: Text(
                              "lbl7".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.textstylerocknrolloneregular100
                                  .copyWith(
                                fontSize: getFontSize(
                                  100,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        8.00,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Text(
                      "lbl_no_4".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.textstylerobotoregular20.copyWith(
                        fontSize: getFontSize(
                          20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                right: getHorizontalSize(
                  10.00,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: getVerticalSize(
                      150.00,
                    ),
                    width: getHorizontalSize(
                      144.00,
                    ),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                5.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                145.00,
                              ),
                              width: getHorizontalSize(
                                144.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgGroup570,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                37.50,
                              ),
                              right: getHorizontalSize(
                                36.50,
                              ),
                              bottom: getVerticalSize(
                                5.00,
                              ),
                            ),
                            child: Text(
                              "lbl7".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.textstylerocknrolloneregular1001
                                  .copyWith(
                                fontSize: getFontSize(
                                  100,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        10.00,
                      ),
                      top: getVerticalSize(
                        12.00,
                      ),
                      right: getHorizontalSize(
                        10.00,
                      ),
                    ),
                    child: Text(
                      "lbl_no_3".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.textstylerobotoregular20.copyWith(
                        fontSize: getFontSize(
                          20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
