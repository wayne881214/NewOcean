import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/math_utils.dart';
import '../../../theme/app_style.dart';
import '../controller/animal_all_controller.dart';
import '../models/animal_all_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:peter1421_s_application21/core/app_export.dart';

// ignore: must_be_immutable
class AnimalAllItemWidget extends StatelessWidget {
  AnimalAllItemWidget(this.animalAllItemModelObj, {this.onTapImgPic});

  AnimalAllItemModel animalAllItemModelObj;

  var controller = Get.find<AnimalAllController>();

  VoidCallback? onTapImgPic;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: EdgeInsets.only(
          right: getHorizontalSize(
            22.00,
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
                          ImageConstant.imgCommon,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          onTapImgPic!();
                        },
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
                            ImageConstant.imgPic,
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
    );
  }
}
