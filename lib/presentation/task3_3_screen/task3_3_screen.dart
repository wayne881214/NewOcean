import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import 'controller/task3_3_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
// import 'package:peter1421_s_application17/core/app_export.dart';

class Task33Screen extends GetWidget<Task33Controller> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration:
                            BoxDecoration(color: ColorConstant.whiteA700),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(10.00),
                                      right: getHorizontalSize(10.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(25.00)),
                                      border: Border.all(
                                          color: ColorConstant.bluegray100,
                                          width: getHorizontalSize(0.30)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: ColorConstant.black9003f,
                                            spreadRadius:
                                                getHorizontalSize(2.00),
                                            blurRadius: getHorizontalSize(2.00),
                                            offset: Offset(0, 4))
                                      ]),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(41.00),
                                                top: getVerticalSize(13.00),
                                                bottom: getVerticalSize(17.00)),
                                            child: Text("lbl_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstylerobotoromanbold20
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(20)))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(48.00)),
                                            child: Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(117.00),
                                                decoration: AppDecoration
                                                    .textstylerobotoromanbold201,
                                                child: Text("lbl_started".tr,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstylerobotoromanbold201
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    20))))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(24.00),
                                                top: getVerticalSize(15.00),
                                                right: getHorizontalSize(28.00),
                                                bottom: getVerticalSize(15.00)),
                                            child: Text("lbl_record".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstylerobotoromanbold20
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(20))))
                                      ])),
                              Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(45.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(31.50))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(4.63),
                                                top: getVerticalSize(5.41),
                                                right: getHorizontalSize(4.66),
                                                bottom: getVerticalSize(5.45)),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(
                                                    getHorizontalSize(32.00)),
                                                gradient: LinearGradient(begin: Alignment(-0.07428560096599202, -0.14000056895270685), end: Alignment(1.0245717391623037, 1.0600000328028574), colors: [
                                                  ColorConstant.cyan6004c,
                                                  ColorConstant.indigoA7004c
                                                ])),
                                            child: OutlineGradientButton(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        getHorizontalSize(0.61),
                                                    top: getVerticalSize(0.61),
                                                    right:
                                                        getHorizontalSize(0.61),
                                                    bottom:
                                                        getVerticalSize(0.61)),
                                                strokeWidth:
                                                    getHorizontalSize(0.61),
                                                gradient: LinearGradient(
                                                    begin: Alignment(0.4999999999999999, -1.0626300759038861e-14),
                                                    end: Alignment(0.5, 1.0400000942230203),
                                                    colors: [
                                                      ColorConstant.whiteA70026,
                                                      ColorConstant.whiteA70026
                                                    ]),
                                                corners: Corners(
                                                    topLeft: Radius.circular(32),
                                                    topRight: Radius.circular(32),
                                                    bottomLeft: Radius.circular(32),
                                                    bottomRight: Radius.circular(32)),
                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                  Container(
                                                      height: getVerticalSize(
                                                          388.00),
                                                      width: getHorizontalSize(
                                                          300.00),
                                                      margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  10.00),
                                                          top: getVerticalSize(
                                                              28.59),
                                                          right:
                                                              getHorizontalSize(
                                                                  10.00)),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child:
                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                10.00)),
                                                                        decoration: BoxDecoration(
                                                                            color: ColorConstant
                                                                                .whiteA700,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(
                                                                                30.00))),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Padding(padding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(26.00), right: getHorizontalSize(10.00), bottom: getVerticalSize(94.00)), child: Text("lbl9".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstyleoswaldregular203.copyWith(fontSize: getFontSize(20))))
                                                                            ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            8.00),
                                                                        right: getHorizontalSize(
                                                                            8.00),
                                                                        bottom: getVerticalSize(
                                                                            10.00)),
                                                                    child: Image.asset(
                                                                        ImageConstant
                                                                            .imgImage27,
                                                                        height: getVerticalSize(
                                                                            251.00),
                                                                        width: getHorizontalSize(
                                                                            284.00),
                                                                        fit: BoxFit
                                                                            .fill)))
                                                          ])),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxttf();
                                                      },
                                                      child: Container(
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  10.00),
                                                              top: getVerticalSize(
                                                                  15.00),
                                                              right: getHorizontalSize(
                                                                  10.00),
                                                              bottom: getVerticalSize(
                                                                  17.55)),
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  30.00),
                                                              top: getVerticalSize(
                                                                  5.00),
                                                              right: getHorizontalSize(
                                                                  30.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      5.00)),
                                                          decoration: AppDecoration
                                                              .textstyleoswaldregular204,
                                                          child: Text("lbl10".tr,
                                                              overflow: TextOverflow.ellipsis,
                                                              textAlign: TextAlign.center,
                                                              style: AppStyle.textstyleoswaldregular204.copyWith(fontSize: getFontSize(20)))))
                                                ])))
                                      ]))
                            ]))))));
  }

  onTapImgX() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapTxttf() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "system", middleText: "great!");
  }
}
