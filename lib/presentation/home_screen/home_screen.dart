import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:peter1421_s_application17/core/app_export.dart';

class HomeScreen extends GetWidget<HomeController> {
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
                                      margin: EdgeInsets.only(
                                          top: getVerticalSize(55.00)),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(15.00),
                                              right: getHorizontalSize(15.00)),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapImgHamburgericon();
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            top:
                                                                getVerticalSize(
                                                                    9.78),
                                                            bottom:
                                                                getVerticalSize(
                                                                    9.09)),
                                                        child: Image.asset(
                                                            ImageConstant
                                                                .imgHamburgericon,
                                                            height:
                                                                getVerticalSize(
                                                                    31.13),
                                                            width:
                                                                getHorizontalSize(
                                                                    51.86),
                                                            fit: BoxFit.fill))),
                                                Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  50.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  73.80),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                32.91),
                                                                            top: getVerticalSize(
                                                                                12.45),
                                                                            right: getHorizontalSize(
                                                                                32.91),
                                                                            bottom: getVerticalSize(
                                                                                13.53)),
                                                                        child: Text(
                                                                            "lbl_1"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.textstylepoppinsregular20.copyWith(fontSize: getFontSize(20))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                11.00)),
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(50.00),
                                                                            width: getHorizontalSize(73.80),
                                                                            child: SvgPicture.asset(ImageConstant.imgPolygon1, fit: BoxFit.fill))))
                                                              ])),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  39.81),
                                                          width:
                                                              getHorizontalSize(
                                                                  74.79),
                                                          margin: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      66.81),
                                                              top:
                                                                  getVerticalSize(
                                                                      2.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      8.19)),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                11.79),
                                                                            top: getVerticalSize(
                                                                                10.00),
                                                                            right: getHorizontalSize(
                                                                                11.79),
                                                                            bottom: getVerticalSize(
                                                                                4.81)),
                                                                        child: Text(
                                                                            "lbl_50"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.textstylepoppinsregular20.copyWith(fontSize: getFontSize(20))))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    child: Container(
                                                                        height: getVerticalSize(33.80),
                                                                        width: getHorizontalSize(74.79),
                                                                        margin: EdgeInsets.only(top: getVerticalSize(10.00)),
                                                                        child: Card(
                                                                            clipBehavior: Clip.antiAlias,
                                                                            elevation: 0,
                                                                            margin: EdgeInsets.all(0),
                                                                            shape: RoundedRectangleBorder(side: BorderSide(color: ColorConstant.teal100, width: getHorizontalSize(2.00)), borderRadius: BorderRadius.circular(getHorizontalSize(16.90))),
                                                                            child: Stack(children: [
                                                                              Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(10.10), top: getVerticalSize(10.00), right: getHorizontalSize(10.10), bottom: getVerticalSize(5.43)), child: Container(height: getVerticalSize(18.38), width: getHorizontalSize(22.90), child: SvgPicture.asset(ImageConstant.imgDiamondicon, fit: BoxFit.fill))))
                                                                            ])))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                10.00),
                                                                            bottom: getVerticalSize(
                                                                                10.00)),
                                                                        child: Container(
                                                                            height:
                                                                                getSize(15.00),
                                                                            width: getSize(15.00),
                                                                            child: SvgPicture.asset(ImageConstant.imgPluscircle, fit: BoxFit.fill))))
                                                              ]))
                                                    ])
                                              ])))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(150.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(50.00),
                                      width: getHorizontalSize(300.00),
                                      decoration: AppDecoration
                                          .textstyleoswaldregular20,
                                      child: Text("lbl".tr,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .textstyleoswaldregular20
                                              .copyWith(
                                                  fontSize: getFontSize(20))))),
                              Container(
                                  height: getSize(291.83),
                                  width: getSize(291.83),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(30.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getSize(291.83),
                                                width: getSize(291.83),
                                                child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgHomepagelogo,
                                                    fit: BoxFit.fill))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapImgAnimalgef987be();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            37.00),
                                                        top: getVerticalSize(
                                                            40.00),
                                                        right:
                                                            getHorizontalSize(
                                                                35.83),
                                                        bottom: getVerticalSize(
                                                            40.00)),
                                                    child: Image.asset(
                                                        ImageConstant
                                                            .imgAnimalgef987be,
                                                        height: getVerticalSize(
                                                            191.00),
                                                        width:
                                                            getHorizontalSize(
                                                                219.00),
                                                        fit: BoxFit.fill))))
                                      ]))
                            ]))))));
  }

  onTapImgHamburgericon() {
    Get.toNamed(AppRoutes.hamburgerScreen);
  }

  onTapImgAnimalgef987be() {
    Get.toNamed(AppRoutes.task1Screen);
  }
}
