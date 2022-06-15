import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/math_utils.dart';
// import 'package:peter1421_s_application21/core/app_export.dart';

class AppStyle {
  static TextStyle textstyleregular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylelatobold12 = TextStyle(
    color: ColorConstant.indigo600,
    fontSize: getFontSize(
      12,
    ),
    fontFamily: 'Lato',
    fontWeight: FontWeight.w700,
  );

  static TextStyle textstylerocknrolloneregular100 =
      textstylerocknrolloneregular1001.copyWith(
    color: ColorConstant.yellow500,
  );

  static TextStyle textstyleregular16 = TextStyle(
    color: ColorConstant.bluegray400,
    fontSize: getFontSize(
      16,
    ),
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylerobotoromanbold201 =
      textstylerobotoromanbold20.copyWith();

  static TextStyle textstyleinterregular25 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      25,
    ),
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylerocknrolloneregular75 =
      textstylerocknrolloneregular1002.copyWith(
    fontSize: getFontSize(
      75,
    ),
  );

  static TextStyle textstylerobotoregular25 = textstylerobotoregular20.copyWith(
    fontSize: getFontSize(
      25,
    ),
  );

  static TextStyle textstylerocknrolloneregular1002 =
      textstylerocknrolloneregular1001.copyWith(
    color: ColorConstant.red300,
  );

  static TextStyle textstylerobotoregular35 = textstylerobotoregular20.copyWith(
    fontSize: getFontSize(
      35,
    ),
  );

  static TextStyle textstylerobotoregular23 = textstylerobotoregular20.copyWith(
    fontSize: getFontSize(
      23,
    ),
  );

  static TextStyle textstylerobotoromanbold30 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      30,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
  );

  static TextStyle textstylerobotoregular20 = TextStyle(
    color: ColorConstant.black900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstylerocknrolloneregular1001 = TextStyle(
    color: ColorConstant.cyan200,
    fontSize: getFontSize(
      100,
    ),
    fontFamily: 'RocknRoll One',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textstyleoswaldregular20 = textstylerobotoregular20.copyWith(
    fontFamily: 'Oswald',
  );

  static TextStyle textstylerobotoromanbold20 = TextStyle(
    color: ColorConstant.lightBlue900,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w700,
  );
}
