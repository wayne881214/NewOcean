import 'controller/task3_2_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peter1421_s_application17/core/app_export.dart';

class Task32Screen extends GetWidget<Task32Controller> {
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
                                                                        .imgX3,
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
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(52.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Image.asset(ImageConstant.imgImage271,
                                      height: getVerticalSize(225.00),
                                      width: getHorizontalSize(270.00),
                                      fit: BoxFit.fill)),
                              Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(13.00),
                                      right: getHorizontalSize(10.00)),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.bluegray101,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(30.00))),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(36.00),
                                                right: getHorizontalSize(10.00),
                                                bottom: getVerticalSize(84.00)),
                                            child: Text("lbl11".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .textstyleoswaldregular203
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(20))))
                                      ])),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxttf();
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(10.00),
                                          top: getVerticalSize(20.00),
                                          right: getHorizontalSize(10.00)),
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(30.00),
                                          top: getVerticalSize(5.00),
                                          right: getHorizontalSize(30.00),
                                          bottom: getVerticalSize(5.00)),
                                      decoration: AppDecoration
                                          .textstyleoswaldregular204,
                                      child: Text("lbl10".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .textstyleoswaldregular204
                                              .copyWith(
                                                  fontSize: getFontSize(20))))),
                              Container(
                                  height: getVerticalSize(72.00),
                                  width: getHorizontalSize(323.00),
                                  margin: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      top: getVerticalSize(13.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(72.00),
                                                width:
                                                    getHorizontalSize(323.00),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray101,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                36.00))))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(276.00),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        23.00),
                                                    top: getVerticalSize(18.00),
                                                    right: getHorizontalSize(
                                                        24.00),
                                                    bottom:
                                                        getVerticalSize(20.00)),
                                                child: Text("msg2".tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .textstyleoswaldregular12
                                                        .copyWith(
                                                            fontSize:
                                                                getFontSize(
                                                                    12)))))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00),
                                      right: getHorizontalSize(10.00),
                                      bottom: getVerticalSize(20.00)),
                                  child: Image.asset(
                                      ImageConstant.imgAnimalgef987be2,
                                      height: getVerticalSize(76.70),
                                      width: getHorizontalSize(88.00),
                                      fit: BoxFit.fill))
                            ]))))));
  }

  onTapImgX() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapTxttf() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "system", middleText: "sucessful");
  }
}
