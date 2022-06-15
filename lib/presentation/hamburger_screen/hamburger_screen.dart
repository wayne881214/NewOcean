import 'controller/hamburger_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:peter1421_s_application17/core/app_export.dart';

class HamburgerScreen extends GetWidget<HamburgerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: double.infinity,
                              decoration:
                                  BoxDecoration(color: ColorConstant.teal101),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(120.00),
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(40.00),
                                                right:
                                                    getHorizontalSize(10.00)),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            60.00))),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      60.00)),
                                                          child: Image.asset(
                                                              ImageConstant
                                                                  .imgEllipse8,
                                                              height: getSize(
                                                                  120.00),
                                                              width: getSize(
                                                                  120.00),
                                                              fit:
                                                                  BoxFit.fill)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: getHorizontalSize(97.00),
                                                top: getVerticalSize(23.00),
                                                right:
                                                    getHorizontalSize(97.00)),
                                            child: Text("lbl2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstylerobotoromanbold24
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(24),
                                                        height: 1.58)))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                            width: getHorizontalSize(156.00),
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(35.00),
                                                top: getVerticalSize(6.20),
                                                right:
                                                    getHorizontalSize(35.00)),
                                            child: Text(
                                                "msg_abcde12345_gmai".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .textstylerobotoromanregular13
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(13),
                                                        height: 2.91,
                                                        decoration:
                                                            TextDecoration
                                                                .underline)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: getVerticalSize(524.00),
                                            width: getHorizontalSize(240.00),
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                top: getVerticalSize(23.00),
                                                bottom: getVerticalSize(20.00)),
                                            child: Stack(
                                                alignment: Alignment.centerLeft,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapRectangle7();
                                                          },
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      75.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      240.00),
                                                              margin: EdgeInsets.only(
                                                                  bottom: getVerticalSize(
                                                                      10.00)),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .teal101,
                                                                  borderRadius: BorderRadius.only(
                                                                      topLeft: Radius.circular(
                                                                          getHorizontalSize(
                                                                              37.50)),
                                                                      topRight:
                                                                          Radius.circular(getHorizontalSize(0.00)),
                                                                      bottomLeft: Radius.circular(getHorizontalSize(37.50)),
                                                                      bottomRight: Radius.circular(getHorizontalSize(0.00))))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      82.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      82.00)),
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
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            75.00),
                                                                    width: getHorizontalSize(
                                                                        240.00),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .teal101,
                                                                        borderRadius: BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(getHorizontalSize(37.50)),
                                                                            topRight: Radius.circular(getHorizontalSize(0.00)),
                                                                            bottomLeft: Radius.circular(getHorizontalSize(37.50)),
                                                                            bottomRight: Radius.circular(getHorizontalSize(0.00))))),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            75.00),
                                                                    width: getHorizontalSize(
                                                                        240.00),
                                                                    margin: EdgeInsets.only(
                                                                        top: getVerticalSize(
                                                                            19.00)),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .teal101,
                                                                        borderRadius: BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(getHorizontalSize(37.50)),
                                                                            topRight: Radius.circular(getHorizontalSize(0.00)),
                                                                            bottomLeft: Radius.circular(getHorizontalSize(37.50)),
                                                                            bottomRight: Radius.circular(getHorizontalSize(0.00))))),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            75.00),
                                                                    width: getHorizontalSize(
                                                                        240.00),
                                                                    margin: EdgeInsets.only(
                                                                        top: getVerticalSize(
                                                                            15.00)),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .teal101,
                                                                        borderRadius: BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(getHorizontalSize(37.50)),
                                                                            topRight: Radius.circular(getHorizontalSize(0.00)),
                                                                            bottomLeft: Radius.circular(getHorizontalSize(37.50)),
                                                                            bottomRight: Radius.circular(getHorizontalSize(0.00))))),
                                                                Container(
                                                                    width: double
                                                                        .infinity,
                                                                    margin: EdgeInsets.only(
                                                                        top: getVerticalSize(
                                                                            18.00)),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .teal101,
                                                                        borderRadius: BorderRadius.only(
                                                                            topLeft:
                                                                                Radius.circular(getHorizontalSize(37.50)),
                                                                            topRight: Radius.circular(getHorizontalSize(0.00)),
                                                                            bottomLeft: Radius.circular(getHorizontalSize(37.50)),
                                                                            bottomRight: Radius.circular(getHorizontalSize(0.00)))),
                                                                    child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: getHorizontalSize(
                                                                                  10.00),
                                                                              top: getVerticalSize(
                                                                                  22.00),
                                                                              right: getHorizontalSize(
                                                                                  10.00),
                                                                              bottom: getVerticalSize(
                                                                                  23.00)),
                                                                          child: Text(
                                                                              "lbl3".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.textstyleoswaldregular201.copyWith(fontSize: getFontSize(20))))
                                                                    ]))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  75.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  240.00),
                                                          margin: EdgeInsets.only(
                                                              top: getVerticalSize(
                                                                  10.00)),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .teal101,
                                                              borderRadius: BorderRadius.only(
                                                                  topLeft: Radius.circular(
                                                                      getHorizontalSize(
                                                                          37.50)),
                                                                  topRight:
                                                                      Radius.circular(getHorizontalSize(0.00)),
                                                                  bottomLeft: Radius.circular(getHorizontalSize(37.50)),
                                                                  bottomRight: Radius.circular(getHorizontalSize(0.00)))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left: getHorizontalSize(
                                                                  30.00),
                                                              top: getVerticalSize(
                                                                  10.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      30.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      10.00)),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      500.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      50.00),
                                                              child: SvgPicture.asset(
                                                                  ImageConstant
                                                                      .imgHamburgericon1,
                                                                  fit: BoxFit.fill)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              left:
                                                                  getHorizontalSize(
                                                                      40.00),
                                                              top: getVerticalSize(
                                                                  21.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      40.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      23.00)),
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
                                                                Text("lbl4".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .textstyleoswaldregular201
                                                                        .copyWith(
                                                                            fontSize:
                                                                                getFontSize(20))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: getVerticalSize(
                                                                            62.00)),
                                                                    child: Text(
                                                                        "lbl5"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .textstyleoswaldregular201
                                                                            .copyWith(fontSize: getFontSize(20)))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: getVerticalSize(
                                                                            62.00)),
                                                                    child: Text(
                                                                        "lbl6"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .textstyleoswaldregular201
                                                                            .copyWith(fontSize: getFontSize(20)))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: getVerticalSize(
                                                                            62.00)),
                                                                    child: Text(
                                                                        "lbl7"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .textstyleoswaldregular201
                                                                            .copyWith(fontSize: getFontSize(20)))),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: getVerticalSize(
                                                                            144.00)),
                                                                    child: Text(
                                                                        "lbl8"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .textstyleoswaldregular201
                                                                            .copyWith(fontSize: getFontSize(20))))
                                                              ])))
                                                ])))
                                  ])))
                    ])))));
  }

  onTapRectangle7() {
    Get.toNamed(AppRoutes.task1Screen);
  }
}
