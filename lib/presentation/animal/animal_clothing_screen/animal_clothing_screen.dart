import 'package:get/get.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:newocean/presentation/animal/animal_clothe_screen/widgets/animal_clothe_item_widget.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';


import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/math_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../animal_all_screen/widgets/animal_all_item_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'controller/animal_clothing_controller.dart';

class AnimalClothingScreen extends GetWidget<AnimalClothingController> {
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
                              Container(
                                  height: getSize(350.00),
                                  width: getSize(350.00),
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(18.00),
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
                                                        Alignment.topRight,
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
                                                                              .img,
                                                                          fit: BoxFit
                                                                              .fill)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      19.08),
                                                                  top: getVerticalSize(
                                                                      9.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          19.08),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
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
                                                                      .img1,
                                                                  height:
                                                                      getVerticalSize(
                                                                          293.00),
                                                                  width: getHorizontalSize(
                                                                      312.00),
                                                                  fit: BoxFit
                                                                      .fill)))
                                                    ])))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(61.00),
                                      width: getHorizontalSize(114.00),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(40.00),
                                          right: getHorizontalSize(40.00)),
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(61.00),
                                                    width: getHorizontalSize(
                                                        59.00),
                                                    margin: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                                10.00)),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          11.00),
                                                                      top: getVerticalSize(
                                                                          12.00),
                                                                      right: getHorizontalSize(
                                                                          11.00),
                                                                      bottom: getVerticalSize(
                                                                          12.00)),
                                                                  child: Text(
                                                                      "lbl2".tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .textstylerobotoregular23
                                                                          .copyWith(
                                                                              fontSize: getFontSize(23))))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapImgtf1();
                                                                      },
                                                                      child: Image.asset(
                                                                          ImageConstant
                                                                              .img2,
                                                                          height: getVerticalSize(
                                                                              61.00),
                                                                          width: getHorizontalSize(
                                                                              59.00),
                                                                          fit: BoxFit
                                                                              .fill)))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(61.00),
                                                    width: getHorizontalSize(
                                                        59.00),
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            10.00)),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          11.00),
                                                                      top: getVerticalSize(
                                                                          10.00),
                                                                      right: getHorizontalSize(
                                                                          11.00),
                                                                      bottom: getVerticalSize(
                                                                          10.00)),
                                                                  child: Text(
                                                                      "lbl3".tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .textstylerobotoregular25
                                                                          .copyWith(
                                                                              fontSize: getFontSize(25))))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapImgtf2();
                                                                      },
                                                                      child: Image.asset(
                                                                          ImageConstant
                                                                              .img3,
                                                                          height: getVerticalSize(
                                                                              61.00),
                                                                          width: getHorizontalSize(
                                                                              59.00),
                                                                          fit: BoxFit
                                                                              .fill)))
                                                        ])))
                                          ]))),
                              Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(39.04),
                                      bottom: getVerticalSize(0.25)),
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
                                          begin: Alignment(0.4999999999999999,
                                              -1.0626300759038861e-14),
                                          end: Alignment(
                                              0.5, 1.0400000942230203),
                                          colors: [
                                            ColorConstant.whiteA70026,
                                            ColorConstant.whiteA70026
                                          ]),
                                      corners: Corners(
                                          topLeft: Radius.circular(32),
                                          topRight: Radius.circular(32),
                                          bottomLeft: Radius.circular(32),
                                          bottomRight: Radius.circular(32)),
                                      child:
                                          Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                height: getVerticalSize(40.13),
                                                width:
                                                    getHorizontalSize(349.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        22.50),
                                                    top: getVerticalSize(11.40),
                                                    right: getHorizontalSize(
                                                        18.50)),
                                                child: Stack(
                                                    alignment: Alignment.center,
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
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      40.00),
                                                                  right: getHorizontalSize(
                                                                      40.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          0.55)),
                                                              child: Text(
                                                                  "lbl4".tr,
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
                                                    ]))),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(23.00),
                                                top: getVerticalSize(24.07),
                                                right:
                                                    getHorizontalSize(23.00)),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Image.asset(
                                                      ImageConstant.img4,
                                                      height: getVerticalSize(
                                                          43.97),
                                                      width: getHorizontalSize(
                                                          52.14),
                                                      fit: BoxFit.fill),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  17.86)),
                                                      child: Image.asset(
                                                          ImageConstant.img5,
                                                          height:
                                                              getVerticalSize(
                                                                  43.97),
                                                          width:
                                                              getHorizontalSize(
                                                                  52.14),
                                                          fit: BoxFit.fill)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  13.86)),
                                                      child: Image.asset(
                                                          ImageConstant.img6,
                                                          height:
                                                              getVerticalSize(
                                                                  43.97),
                                                          width:
                                                              getHorizontalSize(
                                                                  52.14),
                                                          fit: BoxFit.fill)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  15.86)),
                                                      child: Image.asset(
                                                          ImageConstant.img7,
                                                          height:
                                                              getVerticalSize(
                                                                  43.97),
                                                          width:
                                                              getHorizontalSize(
                                                                  52.14),
                                                          fit: BoxFit.fill)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                                  14.86)),
                                                      child: Image.asset(
                                                          ImageConstant.img8,
                                                          height:
                                                              getVerticalSize(
                                                                  43.97),
                                                          width:
                                                              getHorizontalSize(
                                                                  52.14),
                                                          fit: BoxFit.fill))
                                                ])),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxttf();
                                            },
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        100.00),
                                                    top: getVerticalSize(14.96),
                                                    right: getHorizontalSize(
                                                        100.00),
                                                    bottom:
                                                        getVerticalSize(20.00)),
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        19.00),
                                                    top: getVerticalSize(4.39),
                                                    right: getHorizontalSize(
                                                        19.00),
                                                    bottom:
                                                        getVerticalSize(4.41)),
                                                decoration: AppDecoration
                                                    .textstyleoswaldregular20,
                                                child: Text("lbl5".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .textstyleoswaldregular20
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    20)))))
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
    // Fluttertoast.showToast(
    //   msg: "功能開發中",
    // );
  }

  onTapImgtf1() {
    // Fluttertoast.showToast(
    //   msg: "功能開發中",
    // );
  }

  onTapImgtf2() {
    // Fluttertoast.showToast(
    //   msg: "功能開發中",
    // );
  }

  onTapTxttf() {
    // Fluttertoast.showToast(
    //   msg: "功能開發中",
    // );
  }
}
