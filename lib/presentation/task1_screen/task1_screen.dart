import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../task1_screen/widgets/group59_item_widget.dart';
import 'controller/task1_controller.dart';
import 'models/group59_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:peter1421_s_application17/core/app_export.dart';

class Task1Screen extends GetWidget<Task1Controller> {
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
                              Container(
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
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text("lbl_task".tr,
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
                                                            4.00)),
                                                    child: Container(
                                                        height: getSize(24.00),
                                                        width: getSize(24.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant.imgX,
                                                            fit: BoxFit.fill))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(20.00),
                                          top: getVerticalSize(10.00),
                                          right: getHorizontalSize(20.00)),
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
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        41.00),
                                                    top: getVerticalSize(13.00),
                                                    bottom:
                                                        getVerticalSize(17.00)),
                                                child: Text("lbl_all".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstylerobotoromanbold20
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    20)))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        48.00)),
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height:
                                                        getVerticalSize(50.00),
                                                    width: getHorizontalSize(
                                                        117.00),
                                                    decoration: AppDecoration
                                                        .textstylerobotoromanbold201,
                                                    child: Text(
                                                        "lbl_started".tr,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .textstylerobotoromanbold201
                                                            .copyWith(
                                                                fontSize:
                                                                    getFontSize(
                                                                        20))))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        24.00),
                                                    top: getVerticalSize(15.00),
                                                    right: getHorizontalSize(
                                                        28.00),
                                                    bottom:
                                                        getVerticalSize(15.00)),
                                                child: Text("lbl_record".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstylerobotoromanbold20
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    20))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(6.00),
                                          top: getVerticalSize(60.00),
                                          right: getHorizontalSize(6.00)),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(20.00)),
                                          border: Border.all(
                                              color: ColorConstant.black90019,
                                              width: getHorizontalSize(3.00))),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                                onTap: () {
                                                  onTapGroup51();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                            12.00)),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Image.asset(
                                                              ImageConstant
                                                                  .imgAnimalgef987be1,
                                                              height:
                                                                  getVerticalSize(
                                                                      103.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      118.00),
                                                              fit: BoxFit.fill),
                                                          Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: getVerticalSize(
                                                                      15.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          20.00)),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                1.00),
                                                                            right: getHorizontalSize(
                                                                                10.00)),
                                                                        child: Text(
                                                                            "msg_save_the_turtle"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.textstylerobotoromanregular20.copyWith(fontSize: getFontSize(20)))),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            217.00),
                                                                        margin: EdgeInsets.only(
                                                                            top: getVerticalSize(
                                                                                13.00)),
                                                                        child: Text(
                                                                            "msg_bring_your_own"
                                                                                .tr,
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.textstylerobotoromanregular14.copyWith(fontSize: getFontSize(14))))
                                                                  ]))
                                                        ]))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: getVerticalSize(23.00),
                                                    bottom:
                                                        getVerticalSize(14.00)),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  44.00)),
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  12.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      10.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      3.00)),
                                                          decoration: AppDecoration
                                                              .textstylepoppinsregular201,
                                                          child: Text("lbl_1".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylepoppinsregular201
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(20)))),
                                                      Container(
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  15.00)),
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      9.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      3.00)),
                                                          decoration: AppDecoration
                                                              .textstylepoppinsregular201,
                                                          child: Text(
                                                              "lbl_22".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylepoppinsregular201
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20)))),
                                                      Container(
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  15.00)),
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      9.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      3.00)),
                                                          decoration: AppDecoration
                                                              .textstylepoppinsregular202,
                                                          child: Text(
                                                              "lbl_32".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylepoppinsregular202
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20)))),
                                                      Container(
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  15.00)),
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      9.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      3.00)),
                                                          decoration: AppDecoration
                                                              .textstylepoppinsregular202,
                                                          child: Text(
                                                              "lbl_42".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylepoppinsregular202
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20)))),
                                                      Container(
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  15.00)),
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      9.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      3.00)),
                                                          decoration: AppDecoration
                                                              .textstylepoppinsregular202,
                                                          child: Text(
                                                              "lbl_52".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylepoppinsregular202
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20)))),
                                                      Container(
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  15.00)),
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      9.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      3.00)),
                                                          decoration: AppDecoration
                                                              .textstylepoppinsregular202,
                                                          child: Text(
                                                              "lbl_62".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylepoppinsregular202
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20)))),
                                                      Container(
                                                          margin: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  15.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      34.00)),
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      9.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      3.00)),
                                                          decoration: AppDecoration
                                                              .textstylepoppinsregular202,
                                                          child: Text(
                                                              "lbl_72".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .textstylepoppinsregular202
                                                                  .copyWith(
                                                                      fontSize:
                                                                          getFontSize(20))))
                                                    ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(5.00),
                                          top: getVerticalSize(30.00),
                                          right: getHorizontalSize(5.00)),
                                      child: Obx(() => ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller.task1ModelObj
                                              .value.group59ItemList.length,
                                          itemBuilder: (context, index) {
                                            Group59ItemModel model = controller
                                                .task1ModelObj
                                                .value
                                                .group59ItemList[index];
                                            return Group59ItemWidget(model);
                                          }))))
                            ]))))));
  }

  onTapImgX() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapGroup51() {
    Get.toNamed(AppRoutes.task4Screen);
  }
}
