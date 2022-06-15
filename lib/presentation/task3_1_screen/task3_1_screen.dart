import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import 'controller/task3_1_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
// import 'package:peter1421_s_application17/core/app_export.dart';

class Task31Screen extends GetWidget<Task31Controller> {
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
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.cyan600),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(161.00),
                                              top: getVerticalSize(45.00),
                                              right: getHorizontalSize(25.00),
                                              bottom: getVerticalSize(17.00)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text("lbl_task".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstylerobotoromanbold30
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    30))),
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapImgX();
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                                    4.00)),
                                                        child: Container(
                                                            height: getSize(
                                                                24.00),
                                                            width:
                                                                getSize(24.00),
                                                            child: SvgPicture
                                                                .asset(
                                                                    ImageConstant
                                                                        .imgX1,
                                                                    fit: BoxFit
                                                                        .fill))))
                                              ])))),
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
                                      top: getVerticalSize(61.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(133.00)),
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
                                                left: getHorizontalSize(5.00),
                                                top: getVerticalSize(5.00),
                                                right: getHorizontalSize(4.29),
                                                bottom: getVerticalSize(5.86)),
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
                                                    begin: Alignment(0.4999999999999999, -1.0626299878124516e-14),
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
                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          240.00),
                                                      margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  10.00),
                                                          top: getVerticalSize(
                                                              34.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  10.00)),
                                                      child: Text("msg".tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: AppStyle
                                                              .textstyleoswaldregular202
                                                              .copyWith(
                                                                  fontSize:
                                                                      getFontSize(
                                                                          20)))),
                                                  Container(
                                                      height: getVerticalSize(
                                                          302.00),
                                                      width: getHorizontalSize(
                                                          253.00),
                                                      margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  10.00),
                                                          top: getVerticalSize(
                                                              24.00),
                                                          right:
                                                              getHorizontalSize(
                                                                  10.00)),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            85.34),
                                                                        top: getVerticalSize(
                                                                            84.00),
                                                                        right: getHorizontalSize(
                                                                            85.34),
                                                                        bottom: getVerticalSize(
                                                                            84.00)),
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            84.24),
                                                                        width: getHorizontalSize(
                                                                            81.66),
                                                                        child: SvgPicture.asset(
                                                                            ImageConstant
                                                                                .imgArrow1,
                                                                            fit:
                                                                                BoxFit.fill)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Padding(
                                                                    padding: EdgeInsets.only(
                                                                        bottom: getVerticalSize(
                                                                            10.00)),
                                                                    child: Image.asset(
                                                                        ImageConstant
                                                                            .imgLovepikcom401,
                                                                        height: getSize(
                                                                            253.00),
                                                                        width: getSize(
                                                                            253.00),
                                                                        fit: BoxFit
                                                                            .fill))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Container(
                                                                    height:
                                                                        getSize(
                                                                            30.00),
                                                                    width: getSize(
                                                                        30.00),
                                                                    margin: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            11.00),
                                                                        top: getVerticalSize(
                                                                            10.00),
                                                                        right: getHorizontalSize(
                                                                            11.00)),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .redA700,
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(15.00))))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Container(
                                                                    height:
                                                                        getSize(
                                                                            30.00),
                                                                    width: getSize(
                                                                        30.00),
                                                                    margin: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            10.00),
                                                                        top: getVerticalSize(
                                                                            10.00),
                                                                        right: getHorizontalSize(
                                                                            10.00)),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .redA700,
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(15.00))))),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        100.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        1.00),
                                                                margin: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        26.00),
                                                                    top: getVerticalSize(
                                                                        27.00),
                                                                    right: getHorizontalSize(
                                                                        26.00),
                                                                    bottom: getVerticalSize(
                                                                        27.00)),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .redA700)),
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        100.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        1.00),
                                                                margin: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        24.00),
                                                                    top: getVerticalSize(
                                                                        27.00),
                                                                    right: getHorizontalSize(
                                                                        24.00),
                                                                    bottom: getVerticalSize(
                                                                        27.00)),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .redA700))
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      4.90),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      8.03)),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            32.00)),
                                                                    child: Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Padding(
                                                                              padding: EdgeInsets.only(top: getVerticalSize(18.10), bottom: getVerticalSize(18.11)),
                                                                              child: Container(height: getVerticalSize(20.00), width: getHorizontalSize(24.00), child: SvgPicture.asset(ImageConstant.imgVector, fit: BoxFit.fill))),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: getHorizontalSize(17.52)),
                                                                              child: Container(height: getVerticalSize(56.21), width: getHorizontalSize(38.97), child: SvgPicture.asset(ImageConstant.imgGroup, fit: BoxFit.fill)))
                                                                        ])),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        right: getHorizontalSize(
                                                                            25.71)),
                                                                    child: Row(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Container(
                                                                              height: getVerticalSize(56.21),
                                                                              width: getHorizontalSize(38.97),
                                                                              child: SvgPicture.asset(ImageConstant.imgGroup1, fit: BoxFit.fill)),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: getHorizontalSize(17.51), top: getVerticalSize(18.10), bottom: getVerticalSize(18.11)),
                                                                              child: Container(height: getVerticalSize(20.00), width: getHorizontalSize(24.00), child: SvgPicture.asset(ImageConstant.imgVector1, fit: BoxFit.fill)))
                                                                        ]))
                                                              ])))
                                                ])))
                                      ]))
                            ]))))));
  }

  onTapImgX() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
