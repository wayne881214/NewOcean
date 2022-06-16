import 'package:get/get.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:newocean/presentation/animal/animal_clothe_screen/widgets/animal_clothe_item_widget.dart';
import 'package:newocean/presentation/animal/animal_unlocked_screen/widgets/animal_unlocked_item_widget.dart';
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

import 'controller/animal_unlocked_controller.dart';
import 'models/animal_unlocked_item_model.dart';

class AnimalUnlockedScreen extends GetWidget<AnimalUnlockedController> {
  String all="所有動物";
  String locked="未解鎖";
  String unlocked="已解鎖";

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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(25.00),
                                          top: getVerticalSize(11.00),
                                          right: getHorizontalSize(15.00)),
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
                                                blurRadius:
                                                    getHorizontalSize(2.00),
                                                offset: Offset(0, 4))
                                          ]),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxttf();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            13.00),
                                                        bottom: getVerticalSize(
                                                            17.00)),
                                                    child: Text(all,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textstylerobotoromanbold20
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        20))))),
                                            Container(
                                                height: getVerticalSize(50.00),
                                                width:
                                                    getHorizontalSize(125.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        19.00)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      50.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      117.00),
                                                              margin: EdgeInsets.only(
                                                                  right:
                                                                      getHorizontalSize(
                                                                          10.00)),
                                                              decoration:
                                                                  BoxDecoration(
                                                                      color: ColorConstant
                                                                          .yellow200))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          10.00),
                                                                  top: getVerticalSize(
                                                                      13.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          13.00)),
                                                              child: Text(
                                                                  locked,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textstylerobotoromanbold20
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(20)))))
                                                    ])),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxttf1();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            20.00),
                                                        top: getVerticalSize(
                                                            14.00),
                                                        bottom: getVerticalSize(
                                                            16.00)),
                                                    child: Text(unlocked,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textstylerobotoromanbold20
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        20)))))
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(34.00),
                                      bottom: getVerticalSize(284.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(174.00),
                                            width: getHorizontalSize(304.00),
                                            child: Obx(() => ListView.builder(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        10.00),
                                                    right: getHorizontalSize(
                                                        10.00)),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                physics:
                                                    BouncingScrollPhysics(),
                                                itemCount: controller
                                                    .animalUnlockedModelObj
                                                    .value
                                                    .animalUnlockedItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  AnimalUnlockedItemModel
                                                      model = controller
                                                          .animalUnlockedModelObj
                                                          .value
                                                          .animalUnlockedItemList[index];
                                                  return AnimalUnlockedItemWidget(
                                                      model,
                                                      onTapNo: onTapNo);
                                                }))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top:
                                                        getVerticalSize(24.00)),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      39.00)),
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
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(145.00),
                                                                        width: getHorizontalSize(144.00),
                                                                        child: Stack(alignment: Alignment.centerRight, children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Container(height: getVerticalSize(145.00), width: getHorizontalSize(144.00), child: SvgPicture.asset(ImageConstant.img35, fit: BoxFit.fill))),
                                                                          Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Container(
                                                                                  height: getVerticalSize(114.00),
                                                                                  width: getHorizontalSize(130.00),
                                                                                  margin: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(2.00), bottom: getVerticalSize(15.00)),
                                                                                  child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                    Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(64.14), width: getHorizontalSize(38.83), margin: EdgeInsets.only(left: getHorizontalSize(38.83), top: getVerticalSize(22.80), right: getHorizontalSize(38.83), bottom: getVerticalSize(22.80)), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(32.07))))),
                                                                                    Align(alignment: Alignment.centerLeft, child: Image.asset(ImageConstant.imgImage6, height: getVerticalSize(114.00), width: getHorizontalSize(130.00), fit: BoxFit.fill))
                                                                                  ])))
                                                                        ]))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            10.00),
                                                                        top: getVerticalSize(
                                                                            5.00),
                                                                        right: getHorizontalSize(
                                                                            10.00)),
                                                                    child: Text(
                                                                        "lbl_no_5"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .textstylerobotoregular20
                                                                            .copyWith(fontSize: getFontSize(20))))
                                                              ])),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      23.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      40.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      4.00)),
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
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(145.00),
                                                                        width: getHorizontalSize(144.00),
                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Container(height: getVerticalSize(145.00), width: getHorizontalSize(144.00), child: SvgPicture.asset(ImageConstant.img36, fit: BoxFit.fill))),
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(
                                                                                  height: getVerticalSize(134.00),
                                                                                  width: getHorizontalSize(140.00),
                                                                                  margin: EdgeInsets.only(top: getVerticalSize(5.00), right: getHorizontalSize(4.00), bottom: getVerticalSize(6.00)),
                                                                                  child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                    Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(5.00), right: getHorizontalSize(1.00)), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(67.00)), child: Image.asset(ImageConstant.imgImage68, height: getSize(134.00), width: getSize(134.00), fit: BoxFit.fill)))),
                                                                                    Align(
                                                                                        alignment: Alignment.centerLeft,
                                                                                        child: Container(
                                                                                            height: getVerticalSize(112.00),
                                                                                            width: getHorizontalSize(140.00),
                                                                                            margin: EdgeInsets.only(top: getVerticalSize(10.00), bottom: getVerticalSize(10.00)),
                                                                                            child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                              Align(alignment: Alignment.topRight, child: Container(height: getVerticalSize(83.84), width: getHorizontalSize(45.83), margin: EdgeInsets.only(left: getHorizontalSize(25.31), top: getVerticalSize(7.00), right: getHorizontalSize(25.31), bottom: getVerticalSize(10.00)), decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(41.92))))),
                                                                                              Align(alignment: Alignment.bottomRight, child: Container(height: getVerticalSize(76.64), width: getHorizontalSize(68.15), margin: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(10.00), bottom: getVerticalSize(0.36)), decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(38.32))))),
                                                                                              Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(right: getHorizontalSize(3.29)), child: Image.asset(ImageConstant.imgImage8, height: getVerticalSize(112.00), width: getHorizontalSize(136.71), fit: BoxFit.fill)))
                                                                                            ])))
                                                                                  ])))
                                                                        ]))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: getHorizontalSize(
                                                                            10.00),
                                                                        top: getVerticalSize(
                                                                            1.00),
                                                                        right: getHorizontalSize(
                                                                            10.00)),
                                                                    child: Text(
                                                                        "lbl_no_7"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: AppStyle
                                                                            .textstylerobotoregular20
                                                                            .copyWith(fontSize: getFontSize(20))))
                                                              ]))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapNo() {
    Get.toNamed(AppRoutes.animalMainScreen);
  }

  onTapImgX() {
    Get.toNamed(AppRoutes.animalAllScreen);
  }

  onTapTxttf() {
    Get.toNamed(AppRoutes.animalAllScreen);
  }

  onTapTxttf1() {
    Get.toNamed(AppRoutes.animalLockedScreen);
  }
}
