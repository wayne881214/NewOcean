import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/math_utils.dart';
import '../../../theme/app_style.dart';
import '../controller/animal_clothe_controller.dart';
import '../models/animal_clothe_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:peter1421_s_application21/core/app_export.dart';

// ignore: must_be_immutable
class AnimalClotheItemWidget extends StatelessWidget {
  AnimalClotheItemWidget(this.animalClotheItemModelObj, {this.onTapImgtf});

  AnimalClotheItemModel animalClotheItemModelObj;

  var controller = Get.find<AnimalClotheController>();

  VoidCallback? onTapImgtf;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: EdgeInsets.only(
          top: getVerticalSize(
            2.56,
          ),
          right: getHorizontalSize(
            17.00,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: getVerticalSize(
                  85.57,
                ),
                width: getHorizontalSize(
                  100.00,
                ),
                margin: EdgeInsets.only(
                  right: getHorizontalSize(
                    2.00,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          onTapImgtf!();
                        },
                        child: Container(
                          height: getVerticalSize(
                            85.57,
                          ),
                          width: getHorizontalSize(
                            100.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.img18,
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
                            4.00,
                          ),
                          top: getVerticalSize(
                            7.71,
                          ),
                          right: getHorizontalSize(
                            3.00,
                          ),
                          bottom: getVerticalSize(
                            5.98,
                          ),
                        ),
                        child: Image.asset(
                          ImageConstant.img19,
                          height: getVerticalSize(
                            71.88,
                          ),
                          width: getHorizontalSize(
                            93.00,
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
                top: getVerticalSize(
                  2.57,
                ),
              ),
              child: Text(
                "lbl10".tr,
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
    );
  }
}
