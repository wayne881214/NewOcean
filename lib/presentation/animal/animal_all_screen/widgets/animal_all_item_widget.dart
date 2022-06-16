import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/math_utils.dart';
import '../../../../theme/app_style.dart';
import '../controller/animal_all_controller.dart';
import '../models/animal_all_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class AnimalAllItemWidget extends StatelessWidget {
  List<String> fish=["No.0","No.1翻車魚","NO.2\n河豚","NO.3\n???","NO.4\n???","NO.5\n游泳圈海豚","NO.6\n???","NO.7\n花嫁海豚","N0.8\n???"];

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
              alignment: Alignment.center,
              child: Container(
                height: getVerticalSize(
                  130.00,
                ),
                width: getHorizontalSize(
                  130.00,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
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
                      alignment: Alignment.center,
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
                fish[1],
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
