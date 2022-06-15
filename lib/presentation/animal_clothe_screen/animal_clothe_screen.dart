import '../animal_clothe_screen/widgets/animal_clothe_item_widget.dart';
import 'controller/animal_clothe_controller.dart';
import 'models/animal_clothe_item_model.dart';
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

class AnimalClotheScreen extends GetWidget<AnimalClotheController> {
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
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.cyan600),
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(33.86),
                                          top: getVerticalSize(45.50),
                                          right: getHorizontalSize(48.00),
                                          bottom: getVerticalSize(17.19)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                                        top: getVerticalSize(
                                                            5.50),
                                                        bottom: getVerticalSize(
                                                            4.81)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            18.00),
                                                        width:
                                                            getHorizontalSize(
                                                                22.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgVector2,
                                                            fit:
                                                                BoxFit.fill)))),
                                            Text("lbl_no_1".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstylerobotoromanbold30
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(30))),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapImgX();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            4.04)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            24.27),
                                                        width:
                                                            getHorizontalSize(
                                                                24.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant.imgX2,
                                                            fit: BoxFit.fill))))
                                          ]))),
                              Container(
                                  height: getSize(350.00),
                                  width: getSize(350.00),
                                  margin: EdgeInsets.only(
                                      top: getVerticalSize(16.00),
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
                                                                              .img16,
                                                                          fit: BoxFit
                                                                              .fill)))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      21.08),
                                                                  top: getVerticalSize(
                                                                      11.00),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          21.08),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          11.00)),
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
                                                                      .img17,
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
                                      top: getVerticalSize(100.04),
                                      bottom: getVerticalSize(8.00)),
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
                                          end:
                                              Alignment(0.5, 1.0400000942230203),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(39.08),
                                                    width: getHorizontalSize(
                                                        349.00),
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            27.50),
                                                        top: getVerticalSize(
                                                            2.53),
                                                        right:
                                                            getHorizontalSize(
                                                                13.50)),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      349.00),
                                                              margin: EdgeInsets.only(
                                                                  top: getVerticalSize(
                                                                      10.00)),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .black900)),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          40.00),
                                                                      right: getHorizontalSize(
                                                                          40.00),
                                                                      bottom: getVerticalSize(
                                                                          0.57)),
                                                                  child: Text(
                                                                      "lbl9".tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: AppStyle
                                                                          .textstylerobotoregular35
                                                                          .copyWith(
                                                                              fontSize: getFontSize(35)))))
                                                        ]))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            13.98),
                                                        bottom: getVerticalSize(
                                                            104.43)),
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
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      118.94),
                                                              width:
                                                                  getHorizontalSize(
                                                                      223.00),
                                                              child: Obx(() => ListView
                                                                  .builder(
                                                                      padding: EdgeInsets.only(
                                                                          left: getHorizontalSize(
                                                                              8.00),
                                                                          bottom: getVerticalSize(
                                                                              6.85)),
                                                                      scrollDirection: Axis
                                                                          .horizontal,
                                                                      physics:
                                                                          BouncingScrollPhysics(),
                                                                      itemCount: controller
                                                                          .animalClotheModelObj
                                                                          .value
                                                                          .animalClotheItemList
                                                                          .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              index) {
                                                                        AnimalClotheItemModel model = controller
                                                                            .animalClotheModelObj
                                                                            .value
                                                                            .animalClotheItemList[index];
                                                                        return AnimalClotheItemWidget(
                                                                            model,
                                                                            onTapImgtf:
                                                                                onTapImgtf);
                                                                      }))),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          16.00),
                                                                  top:
                                                                      getVerticalSize(
                                                                          5.13),
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
                                                                            89.85),
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
                                                                                        onTapImgtf1();
                                                                                      },
                                                                                      child: Padding(padding: EdgeInsets.only(top: getVerticalSize(10.00)), child: Container(height: getVerticalSize(85.57), width: getHorizontalSize(100.00), child: SvgPicture.asset(ImageConstant.img22, fit: BoxFit.fill))))),
                                                                              Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(11.00), right: getHorizontalSize(11.00), bottom: getVerticalSize(10.00)), child: Text("lbl7".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerocknrolloneregular75.copyWith(fontSize: getFontSize(75)))))
                                                                            ])),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                1.00),
                                                                            top: getVerticalSize(
                                                                                2.57)),
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

  onTapImgtf() {
    Fluttertoast.showToast(msg: "功能開發中");
    Fluttertoast.showToast(
      msg: "功能開發中",
    );
  }

  onTapImgVector() {
    Get.toNamed(AppRoutes.animalMainScreen);
  }

  onTapImgX() {
    Get.toNamed(AppRoutes.animalAllScreen);
  }

  onTapImgtf1() {
    Fluttertoast.showToast(
      msg: "功能開發中",
    );
  }
}
