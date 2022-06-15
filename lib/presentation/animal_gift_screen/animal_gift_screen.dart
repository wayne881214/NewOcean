import 'controller/animal_gift_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
// import 'package:peter1421_s_application21/core/app_export.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../animal_all_screen/widgets/animal_all_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AnimalGiftScreen extends GetWidget<AnimalGiftController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.teal100,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        decoration: BoxDecoration(color: ColorConstant.teal100),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: size.width,
                                      margin: EdgeInsets.only(
                                          right: getHorizontalSize(0.14)),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.cyan600),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(35.86),
                                              top: getVerticalSize(44.55),
                                              right: getHorizontalSize(47.99),
                                              bottom: getVerticalSize(16.83)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapImgVector();
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                                    0.55),
                                                            bottom:
                                                                getVerticalSize(
                                                                    9.17)),
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    18.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    22.00),
                                                            child: SvgPicture.asset(
                                                                ImageConstant
                                                                    .imgVector1,
                                                                fit: BoxFit
                                                                    .fill)))),
                                                Text("lbl_no_1".tr,
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
                                                                    3.96)),
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    23.76),
                                                            width:
                                                                getHorizontalSize(
                                                                    23.99),
                                                            child: SvgPicture
                                                                .asset(
                                                                    ImageConstant
                                                                        .imgX1,
                                                                    fit: BoxFit
                                                                        .fill))))
                                              ])))),
                              Container(
                                  height: getSize(350.00),
                                  width: getSize(350.00),
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(17.90),
                                      right: getHorizontalSize(10.00)),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                height: getVerticalSize(39.00),
                                                width: getHorizontalSize(75.28),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(10.00),
                                                    right: getHorizontalSize(
                                                        6.72)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child:
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapImgtf();
                                                                  },
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          39.00),
                                                                      width: getHorizontalSize(
                                                                          75.28),
                                                                      child: SvgPicture.asset(
                                                                          ImageConstant
                                                                              .img9,
                                                                          fit: BoxFit
                                                                              .fill)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      18.23),
                                                                  top: getVerticalSize(
                                                                      10.90),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          18.23),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.90)),
                                                              child: Text(
                                                                  "lbl".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .textstylelatobold12
                                                                      .copyWith(
                                                                          fontSize: getFontSize(12),
                                                                          letterSpacing: 0.45))))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getSize(350.00),
                                                width: getSize(350.00),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .cyan200,
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              175.00))),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        height: getSize(
                                                                            325.00),
                                                                        width: getSize(
                                                                            325.00),
                                                                        margin: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                10.00),
                                                                            top: getVerticalSize(
                                                                                12.50),
                                                                            right: getHorizontalSize(
                                                                                10.00),
                                                                            bottom: getVerticalSize(
                                                                                12.50)),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.whiteA700,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(162.50))))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      12.00),
                                                                  top: getVerticalSize(
                                                                      28.00),
                                                                  right: getHorizontalSize(
                                                                      12.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          28.00)),
                                                              child: Image.asset(
                                                                  ImageConstant
                                                                      .img10,
                                                                  height:
                                                                      getVerticalSize(
                                                                          293.00),
                                                                  width: getHorizontalSize(
                                                                      312.00),
                                                                  fit: BoxFit
                                                                      .fill)))
                                                    ])))
                                      ])),
                              Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(100.04)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(32.00))),
                                  child: OutlineGradientButton(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(0.61),
                                          top: getVerticalSize(0.61),
                                          right: getHorizontalSize(0.61),
                                          bottom: getVerticalSize(0.61)),
                                      strokeWidth: getHorizontalSize(0.61),
                                      gradient: LinearGradient(
                                          begin: Alignment(0.4999999693461916,
                                              -1.0848344911285645e-14),
                                          end: Alignment(0.49999996934619173,
                                              1.04000009422302),
                                          colors: [
                                            ColorConstant.whiteA70026,
                                            ColorConstant.whiteA70026
                                          ]),
                                      corners: Corners(
                                          topLeft: Radius.circular(32),
                                          topRight: Radius.circular(32),
                                          bottomLeft: Radius.circular(32),
                                          bottomRight: Radius.circular(32)),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                height: getVerticalSize(40.18),
                                                width:
                                                    getHorizontalSize(349.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(2.69),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  349.00),
                                                          margin: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      10.00)),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .black900)),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      106.00),
                                                                  right: getHorizontalSize(
                                                                      106.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          0.57)),
                                                              child: Text(
                                                                  "lbl6".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .textstylerobotoregular35
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(35)))))
                                                    ])),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            16.95),
                                                        bottom: getVerticalSize(
                                                            107.42)),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          8.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          5.05)),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Container(
                                                                            height: getVerticalSize(88.03),
                                                                            width: getHorizontalSize(100.00),
                                                                            child: Stack(alignment: Alignment.center, children: [
                                                                              Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: GestureDetector(
                                                                                      onTap: () {
                                                                                        onTapImgtf1();
                                                                                      },
                                                                                      child: Container(height: getVerticalSize(88.03), width: getHorizontalSize(100.00), child: SvgPicture.asset(ImageConstant.img11, fit: BoxFit.fill)))),
                                                                              Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(11.00), top: getVerticalSize(3.52), right: getHorizontalSize(11.00), bottom: getVerticalSize(5.29)), child: Image.asset(ImageConstant.img12, height: getVerticalSize(79.22), width: getHorizontalSize(78.00), fit: BoxFit.fill)))
                                                                            ]))),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                10.00),
                                                                            top: getVerticalSize(
                                                                                2.64),
                                                                            right: getHorizontalSize(
                                                                                10.00)),
                                                                        child: Text(
                                                                            "lbl_x1"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: AppStyle.textstylerobotoregular20.copyWith(fontSize: getFontSize(20))))
                                                                  ])),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          21.00),
                                                                  top:
                                                                      getVerticalSize(
                                                                          2.64),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          5.05)),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Container(
                                                                            height: getVerticalSize(88.03),
                                                                            width: getHorizontalSize(100.00),
                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                              Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: GestureDetector(
                                                                                      onTap: () {
                                                                                        onTapImgtf2();
                                                                                      },
                                                                                      child: Container(height: getVerticalSize(88.03), width: getHorizontalSize(100.00), child: SvgPicture.asset(ImageConstant.img13, fit: BoxFit.fill)))),
                                                                              Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(13.00), top: getVerticalSize(11.44), right: getHorizontalSize(13.00), bottom: getVerticalSize(11.44)), child: Image.asset(ImageConstant.img14, height: getVerticalSize(58.10), width: getHorizontalSize(66.00), fit: BoxFit.fill)))
                                                                            ]))),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                10.00),
                                                                            right: getHorizontalSize(
                                                                                10.00)),
                                                                        child: Text(
                                                                            "lbl_x2"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: AppStyle.textstylerobotoregular20.copyWith(fontSize: getFontSize(20))))
                                                                  ])),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          18.00),
                                                                  top:
                                                                      getVerticalSize(
                                                                          2.64),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          40.00)),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            92.43),
                                                                        width: getHorizontalSize(
                                                                            100.00),
                                                                        margin: EdgeInsets.only(
                                                                            right: getHorizontalSize(
                                                                                3.00)),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topCenter,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.bottomLeft,
                                                                                  child: GestureDetector(
                                                                                      onTap: () {
                                                                                        onTapImgtf3();
                                                                                      },
                                                                                      child: Padding(padding: EdgeInsets.only(top: getVerticalSize(10.00)), child: Container(height: getVerticalSize(88.03), width: getHorizontalSize(100.00), child: SvgPicture.asset(ImageConstant.img15, fit: BoxFit.fill))))),
                                                                              Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(11.00), right: getHorizontalSize(11.00), bottom: getVerticalSize(10.00)), child: Text("lbl7".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerocknrolloneregular75.copyWith(fontSize: getFontSize(75)))))
                                                                            ])),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                1.00),
                                                                            top: getVerticalSize(
                                                                                2.64)),
                                                                        child: Text(
                                                                            "lbl8"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.center,
                                                                            style: AppStyle.textstylerobotoregular20.copyWith(fontSize: getFontSize(20))))
                                                                  ]))
                                                        ])))
                                          ])))
                            ]))))));
  }

  onTapImgVector() {
    Get.toNamed(AppRoutes.animalMainScreen);
  }

  onTapImgX() {
    Get.toNamed(AppRoutes.animalAllScreen);
  }

  onTapImgtf() {
    Fluttertoast.showToast(
      msg: "功能開發中",
    );
  }

  onTapImgtf1() {
    Fluttertoast.showToast(
      msg: "功能開發中",
    );
  }

  onTapImgtf2() {
    Fluttertoast.showToast(
      msg: "功能開發中",
    );
  }

  onTapImgtf3() {
    Fluttertoast.showToast(
      msg: "功能開發中",
    );
  }
}
