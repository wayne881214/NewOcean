import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';


import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/math_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../animal_all_screen/widgets/animal_all_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'controller/animal_main_controller.dart';

class AnimalMainScreen extends GetWidget<AnimalMainController> {
  String des="水域:熱帶/溫帶\n別名:曼波魚\n天敵:海獅/???/???\n";

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
                                      top: getVerticalSize(19.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
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
                                                                              .img23,
                                                                          fit: BoxFit
                                                                              .fill)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      18.09),
                                                                  top: getVerticalSize(
                                                                      11.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          18.09),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          11.00)),
                                                              child: Text(
                                                                  "ddd",
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
                                                                      .img24,
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
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(17.00),
                                          right: getHorizontalSize(10.00)),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.cyan600,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(30.00))),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width:
                                                    getHorizontalSize(201.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    top: getVerticalSize(15.00),
                                                    right: getHorizontalSize(
                                                        10.00),
                                                    bottom:
                                                        getVerticalSize(14.00)),
                                                child: Text(des,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstyleinterregular25
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    25))))
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(28.00),
                                      bottom: getVerticalSize(59.00)),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTaptf();
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        getHorizontalSize(2.00),
                                                    top: getVerticalSize(5.00),
                                                    bottom:
                                                        getVerticalSize(21.00)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      110.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      107.00),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(110.00),
                                                                            width: getHorizontalSize(107.00),
                                                                            child: SvgPicture.asset(ImageConstant.img25, fit: BoxFit.fill))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Padding(
                                                                            padding: EdgeInsets.only(
                                                                                left: getHorizontalSize(2.00),
                                                                                right: getHorizontalSize(3.00),
                                                                                bottom: getVerticalSize(10.00)),
                                                                            child: Image.asset(ImageConstant.img26, height: getVerticalSize(88.00), width: getHorizontalSize(102.00), fit: BoxFit.fill)))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      43.50),
                                                                  top:
                                                                      getVerticalSize(
                                                                          4.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          43.50)),
                                                              child: Text(
                                                                  "裝扮",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .textstylerobotoregular20
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(20)))))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTaptf1();
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        getHorizontalSize(8.00),
                                                    bottom:
                                                        getVerticalSize(21.00)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      119.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      107.00),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(top: getVerticalSize(5.00), bottom: getVerticalSize(4.00)),
                                                                            child: Container(height: getVerticalSize(110.00), width: getHorizontalSize(107.00), child: SvgPicture.asset(ImageConstant.img27, fit: BoxFit.fill)))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: getHorizontalSize(9.00), right: getHorizontalSize(7.00)),
                                                                            child: Image.asset(ImageConstant.img28, height: getVerticalSize(119.00), width: getHorizontalSize(91.00), fit: BoxFit.fill)))
                                                                  ]))),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      10.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      10.00)),
                                                          child: Text("戳戳",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .textstylerobotoregular20
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20))))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTaptf2();
                                            },
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left:
                                                        getHorizontalSize(9.00),
                                                    top: getVerticalSize(5.00),
                                                    right: getHorizontalSize(
                                                        10.00),
                                                    bottom:
                                                        getVerticalSize(21.00)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      110.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      107.00),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(110.00),
                                                                            width: getHorizontalSize(107.00),
                                                                            child: SvgPicture.asset(ImageConstant.img29, fit: BoxFit.fill))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        child: Padding(
                                                                            padding: EdgeInsets.only(
                                                                                left: getHorizontalSize(19.00),
                                                                                top: getVerticalSize(15.00),
                                                                                right: getHorizontalSize(19.00),
                                                                                bottom: getVerticalSize(15.00)),
                                                                            child: Image.asset(ImageConstant.img30, height: getVerticalSize(73.00), width: getHorizontalSize(69.00), fit: BoxFit.fill)))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          41.50),
                                                                  top:
                                                                      getVerticalSize(
                                                                          4.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          41.50)),
                                                              child: Text(
                                                                  "禮物",
                                                                  overflow: TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: AppStyle
                                                                      .textstylerobotoregular20
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(20)))))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapImgX() {
    Get.toNamed(AppRoutes.animalAllScreen);
  }

  onTapImgtf() {
    // Fluttertoast.showToast(
    //   msg: "功能開發中",
    // );
  }

  onTaptf() {
    Get.toNamed(AppRoutes.animalClotheScreen);
  }

  onTaptf1() {
    Get.toNamed(AppRoutes.animalClothingScreen);
  }

  onTaptf2() {
    Get.toNamed(AppRoutes.animalGiftScreen);
  }
}
