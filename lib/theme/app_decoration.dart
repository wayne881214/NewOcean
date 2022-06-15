import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/math_utils.dart';
// import 'package:peter1421_s_application21/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get groupstylewhite1 => BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        ),
      );
  static BoxDecoration get groupstylewhiteA700cornerradius => BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        ),
      );
  static BoxDecoration get groupstylewhite2 => BoxDecoration(
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
      );
  static BoxDecoration get groupstylecyan600cornerradius => BoxDecoration(
        color: ColorConstant.cyan600,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        ),
      );
  static BoxDecoration get textstylerobotoromanbold201 => BoxDecoration(
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
      );
  static BoxDecoration get groupstyleteal100 => BoxDecoration(
        color: ColorConstant.teal100,
      );
  static BoxDecoration get groupstylecyan600 => BoxDecoration(
        color: ColorConstant.cyan600,
      );
  static BoxDecoration get groupstylecyan200cornerradius => BoxDecoration(
        color: ColorConstant.cyan200,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            175.00,
          ),
        ),
      );
  static BoxDecoration get groupstylewhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get textstyleoswaldregular20 => BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            17.59,
          ),
        ),
        border: Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            3.00,
          ),
        ),
      );
}
