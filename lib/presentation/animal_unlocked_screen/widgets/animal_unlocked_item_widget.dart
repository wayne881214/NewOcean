import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/math_utils.dart';
import '../../../theme/app_style.dart';
import '../controller/animal_unlocked_controller.dart';
import '../models/animal_unlocked_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:peter1421_s_application21/core/app_export.dart';

// ignore: must_be_immutable
class AnimalUnlockedItemWidget extends StatelessWidget {
  AnimalUnlockedItemWidget(this.animalUnlockedItemModelObj, {this.onTapNo});

  AnimalUnlockedItemModel animalUnlockedItemModelObj;

  var controller = Get.find<AnimalUnlockedController>();

  VoidCallback? onTapNo;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          onTapNo!();
        },
        child: Padding(
          padding: EdgeInsets.only(
            right: getHorizontalSize(
              16.00,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
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
                  child: Stack(
                    alignment: Alignment.centerLeft,
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
                            ImageConstant.img31,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              2.00,
                            ),
                            top: getVerticalSize(
                              5.00,
                            ),
                            right: getHorizontalSize(
                              10.00,
                            ),
                            bottom: getVerticalSize(
                              9.00,
                            ),
                          ),
                          child: Image.asset(
                            ImageConstant.img32,
                            height: getVerticalSize(
                              131.00,
                            ),
                            width: getHorizontalSize(
                              127.00,
                            ),
                            fit: BoxFit.fill,
                          ),
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
                    5.00,
                  ),
                  right: getHorizontalSize(
                    10.00,
                  ),
                ),
                child: Text(
                  "lbl_no_12".tr,
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
    );
  }
}
