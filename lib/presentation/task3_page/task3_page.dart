import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import 'controller/task3_controller.dart';
import 'models/task3_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:peter1421_s_application17/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Task3Page extends StatelessWidget {
  Task3Controller controller = Get.put(Task3Controller(Task3Model().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Container(
              width: getHorizontalSize(130.00),
              margin: EdgeInsets.only(right: getHorizontalSize(10.00)),
              decoration: BoxDecoration(
                  color: ColorConstant.cyan600,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(getHorizontalSize(0.00)),
                      topRight: Radius.circular(getHorizontalSize(50.00)),
                      bottomLeft: Radius.circular(getHorizontalSize(0.00)),
                      bottomRight: Radius.circular(getHorizontalSize(50.00)))),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(9.00),
                                top: getVerticalSize(6.00),
                                right: getHorizontalSize(53.00),
                                bottom: getVerticalSize(4.00)),
                            child: Text("lbl14".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.textstyleoswaldregular205
                                    .copyWith(fontSize: getFontSize(20)))))
                  ])),
          Align(
              alignment: Alignment.center,
              child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(
                      left: getHorizontalSize(10.00),
                      top: getVerticalSize(20.00)),
                  decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius:
                          BorderRadius.circular(getHorizontalSize(24.00))),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapGroup100000084();
                            },
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: getHorizontalSize(24.00),
                                    top: getVerticalSize(24.00),
                                    right: getHorizontalSize(24.00)),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              color: ColorConstant.yellow100,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(
                                                          52.00))),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            10.00),
                                                        top: getVerticalSize(
                                                            27.00),
                                                        right:
                                                            getHorizontalSize(
                                                                10.00),
                                                        bottom: getVerticalSize(
                                                            27.00)),
                                                    child: IconButton(
                                                        onPressed: () {},
                                                        constraints: BoxConstraints(
                                                            minHeight:
                                                                getSize(50.00),
                                                            minWidth:
                                                                getSize(50.00)),
                                                        padding:
                                                            EdgeInsets.all(0),
                                                        icon: Container(
                                                            width:
                                                                getSize(50.00),
                                                            height:
                                                                getSize(50.00),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .amberA400,
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                        getHorizontalSize(25.00))),
                                                            padding: EdgeInsets.only(left: getHorizontalSize(11.67), top: getVerticalSize(11.67), right: getHorizontalSize(11.67), bottom: getVerticalSize(11.67)),
                                                            child: Image.asset(ImageConstant.imgFrame))))
                                              ])),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(26.00),
                                              top: getVerticalSize(34.00),
                                              bottom: getVerticalSize(31.00)),
                                          child: Text("lbl_task2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .textstyleoverlockregular32
                                                  .copyWith(
                                                      fontSize:
                                                          getFontSize(32)))),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: getHorizontalSize(18.00),
                                              top: getVerticalSize(46.00),
                                              bottom: getVerticalSize(43.51)),
                                          child: Container(
                                              height: getVerticalSize(14.49),
                                              width: getHorizontalSize(14.00),
                                              child: SvgPicture.asset(
                                                  ImageConstant.imgVector3,
                                                  fit: BoxFit.fill)))
                                    ]))),
                        Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(20.00),
                                top: getVerticalSize(18.00),
                                right: getHorizontalSize(20.00)),
                            child: Text("msg4".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.textstyleoverlockregular20
                                    .copyWith(fontSize: getFontSize(20)))),
                        Padding(
                            padding: EdgeInsets.only(
                                top: getVerticalSize(74.00),
                                bottom: getVerticalSize(16.00)),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(10.00)),
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(11.00),
                                          top: getVerticalSize(5.00),
                                          right: getHorizontalSize(12.00),
                                          bottom: getVerticalSize(10.00)),
                                      decoration: AppDecoration
                                          .textstyleoswaldregular208,
                                      child: Text("lbl_x1".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .textstyleoswaldregular208
                                              .copyWith(
                                                  fontSize: getFontSize(20)))),
                                  Container(
                                      margin: EdgeInsets.only(
                                          right: getHorizontalSize(18.00)),
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(11.00),
                                          top: getVerticalSize(5.00),
                                          right: getHorizontalSize(12.00),
                                          bottom: getVerticalSize(10.00)),
                                      decoration: AppDecoration
                                          .textstyleoswaldregular208,
                                      child: Text("lbl15".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .textstyleoswaldregular208
                                              .copyWith(
                                                  fontSize: getFontSize(20))))
                                ]))
                      ]))),
          Padding(
              padding: EdgeInsets.only(top: getVerticalSize(86.29)),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          onTapGroup100000085();
                        },
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(26.01),
                                right: getHorizontalSize(26.01)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                      height: getVerticalSize(97.66),
                                      width: getHorizontalSize(94.08),
                                      child: SvgPicture.asset(
                                          ImageConstant.imgGroup100000085,
                                          fit: BoxFit.fill)),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(69.91),
                                          top: getVerticalSize(32.71),
                                          bottom: getVerticalSize(20.37)),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text("lbl_task2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .textstyleoverlockregular32
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(32))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        13.38),
                                                    top: getVerticalSize(8.00),
                                                    bottom:
                                                        getVerticalSize(7.68)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(28.90),
                                                    width: getHorizontalSize(
                                                        24.70),
                                                    child: SvgPicture.asset(
                                                        ImageConstant.imgClock,
                                                        fit: BoxFit.fill)))
                                          ]))
                                ]))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                            height: getVerticalSize(163.92),
                            width: getHorizontalSize(353.99),
                            margin: EdgeInsets.only(
                                left: getHorizontalSize(10.00),
                                top: getVerticalSize(5.19)),
                            child:
                                Stack(alignment: Alignment.topLeft, children: [
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(8.01),
                                          top: getVerticalSize(10.00),
                                          right: getHorizontalSize(10.00)),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(36.13),
                                                width: getHorizontalSize(30.87),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      36.13),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30.87),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .orange300,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(18.07))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                          11.52),
                                                                  right: getHorizontalSize(
                                                                      11.52),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                              child: Text(
                                                                  "lbl_1".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textstylepoppinsregular203
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(20)))))
                                                    ])),
                                            Container(
                                                height: getVerticalSize(36.13),
                                                width: getHorizontalSize(30.87),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        15.44)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      36.13),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30.87),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .orange300,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(18.07))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      9.26),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          9.61),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                              child: Text(
                                                                  "lbl_22".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textstylepoppinsregular203
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(20)))))
                                                    ])),
                                            Container(
                                                height: getVerticalSize(36.13),
                                                width: getHorizontalSize(30.87),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        15.43)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      36.13),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30.87),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .orange300,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(18.07))))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      9.26),
                                                                  right: getHorizontalSize(
                                                                      10.00),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                              child: Text(
                                                                  "lbl_32".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textstylepoppinsregular203
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(20)))))
                                                    ])),
                                            Container(
                                                height: getVerticalSize(36.13),
                                                width: getHorizontalSize(30.87),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        15.44)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      36.13),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30.87),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .orange300,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(18.07))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      9.26),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          9.26),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                              child: Text(
                                                                  "lbl_42".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textstylepoppinsregular203
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(20)))))
                                                    ])),
                                            Container(
                                                height: getVerticalSize(36.13),
                                                width: getHorizontalSize(30.87),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        15.44)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      36.13),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30.87),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .orange300,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(18.07))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      9.26),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          9.26),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                              child: Text(
                                                                  "lbl_52".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textstylepoppinsregular203
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(20)))))
                                                    ])),
                                            Container(
                                                height: getVerticalSize(36.13),
                                                width: getHorizontalSize(30.87),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        15.43)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      36.13),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30.87),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .orange300,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(18.07))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      9.26),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          9.61),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                              child: Text(
                                                                  "lbl_62".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textstylepoppinsregular203
                                                                      .copyWith(
                                                                          fontSize:
                                                                              getFontSize(20)))))
                                                    ])),
                                            Container(
                                                height: getVerticalSize(36.13),
                                                width: getHorizontalSize(30.87),
                                                margin: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        15.44)),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      36.13),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30.87),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .bluegray100,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(18.07))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: getHorizontalSize(
                                                                      10.00),
                                                                  top: getVerticalSize(
                                                                      1.20),
                                                                  right:
                                                                      getHorizontalSize(
                                                                          9.58),
                                                                  bottom:
                                                                      getVerticalSize(
                                                                          10.00)),
                                                              child: Text(
                                                                  "lbl_72".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .textstylepoppinsregular203
                                                                      .copyWith(
                                                                          fontSize: getFontSize(20)))))
                                                    ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                      width: getHorizontalSize(353.99),
                                      margin: EdgeInsets.only(
                                          bottom: getVerticalSize(10.00)),
                                      child: Text("msg5".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstyleoverlockregular20
                                              .copyWith(
                                                  fontSize: getFontSize(20)))))
                            ]))),
                    Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(0.22)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(10.00)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(45.72),
                                      width: getHorizontalSize(154.35),
                                      decoration: AppDecoration
                                          .textstyleoswaldregular209,
                                      child: Text("lbl_x1".tr,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .textstyleoswaldregular209
                                              .copyWith(
                                                  fontSize: getFontSize(20))))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      right: getHorizontalSize(18.08)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(45.72),
                                      width: getHorizontalSize(154.35),
                                      decoration: AppDecoration
                                          .textstyleoswaldregular209,
                                      child: Text("lbl15".tr,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .textstyleoswaldregular209
                                              .copyWith(
                                                  fontSize: getFontSize(20)))))
                            ]))
                  ])),
          Padding(
              padding: EdgeInsets.only(top: getVerticalSize(88.00)),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          onTapGroup100000086();
                        },
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(21.00),
                                right: getHorizontalSize(21.00)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                      height: getSize(104.00),
                                      width: getSize(104.00),
                                      margin: EdgeInsets.only(
                                          bottom: getVerticalSize(1.23)),
                                      child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          color: ColorConstant.pink50,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(
                                                          52.00))),
                                          child: Stack(children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            27.00),
                                                        top: getVerticalSize(
                                                            24.46),
                                                        right:
                                                            getHorizontalSize(
                                                                27.00),
                                                        bottom: getVerticalSize(
                                                            24.46)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            47.51),
                                                        width:
                                                            getHorizontalSize(
                                                                50.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant
                                                                .imgFrame1,
                                                            fit: BoxFit.fill))))
                                          ]))),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(57.00),
                                          top: getVerticalSize(52.00)),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text("lbl_task2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .textstyleoverlockregular32
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(32))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                        13.74),
                                                    top: getVerticalSize(9.55),
                                                    bottom:
                                                        getVerticalSize(9.16)),
                                                child: Container(
                                                    height:
                                                        getVerticalSize(34.52),
                                                    width: getHorizontalSize(
                                                        25.35),
                                                    child: SvgPicture.asset(
                                                        ImageConstant.imgClock1,
                                                        fit: BoxFit.fill)))
                                          ]))
                                ]))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: getHorizontalSize(363.38),
                            margin: EdgeInsets.only(
                                left: getHorizontalSize(13.00),
                                top: getVerticalSize(20.77),
                                right: getHorizontalSize(3.62)),
                            child: Text("msg5".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.textstyleoverlockregular20
                                    .copyWith(fontSize: getFontSize(20))))),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: getHorizontalSize(13.00),
                                top: getVerticalSize(73.00),
                                right: getHorizontalSize(13.00)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(12.68),
                                          right: getHorizontalSize(10.56),
                                          bottom: getVerticalSize(3.12)),
                                      decoration: AppDecoration
                                          .textstylepoppinsregular204,
                                      child: Text("lbl_1".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstylepoppinsregular204
                                              .copyWith(
                                                  fontSize: getFontSize(20)))),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(15.85)),
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(9.50),
                                          bottom: getVerticalSize(3.12)),
                                      decoration: AppDecoration
                                          .textstylepoppinsregular204,
                                      child: Text("lbl_22".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstylepoppinsregular204
                                              .copyWith(
                                                  fontSize: getFontSize(20)))),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(15.84)),
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(9.51),
                                          bottom: getVerticalSize(3.12)),
                                      decoration: AppDecoration
                                          .textstylepoppinsregular204,
                                      child: Text("lbl_32".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstylepoppinsregular204
                                              .copyWith(
                                                  fontSize: getFontSize(20)))),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(15.85)),
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(9.50),
                                          bottom: getVerticalSize(3.12)),
                                      decoration: AppDecoration
                                          .textstylepoppinsregular204,
                                      child: Text("lbl_42".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstylepoppinsregular204
                                              .copyWith(
                                                  fontSize: getFontSize(20)))),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(15.84)),
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(9.51),
                                          bottom: getVerticalSize(3.12)),
                                      decoration: AppDecoration
                                          .textstylepoppinsregular204,
                                      child: Text("lbl_52".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstylepoppinsregular204
                                              .copyWith(
                                                  fontSize: getFontSize(20)))),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(15.85)),
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(9.50),
                                          bottom: getVerticalSize(3.12)),
                                      decoration: AppDecoration
                                          .textstylepoppinsregular204,
                                      child: Text("lbl_62".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstylepoppinsregular204
                                              .copyWith(
                                                  fontSize: getFontSize(20)))),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(15.84)),
                                      padding: EdgeInsets.only(
                                          left: getHorizontalSize(10.56),
                                          top: getVerticalSize(1.04),
                                          bottom: getVerticalSize(2.08)),
                                      decoration: AppDecoration
                                          .textstylepoppinsregular205,
                                      child: Text("lbl_72".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .textstylepoppinsregular205
                                              .copyWith(
                                                  fontSize: getFontSize(20))))
                                ]))),
                    Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(12.20)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(27.30)),
                                      border: Border.all(
                                          color: ColorConstant.bluegray100,
                                          width: getHorizontalSize(3.00)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: ColorConstant.black9003f,
                                            spreadRadius:
                                                getHorizontalSize(2.00),
                                            blurRadius: getHorizontalSize(2.00),
                                            offset: Offset(0, 4))
                                      ]),
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
                                                top: getVerticalSize(6.82),
                                                right: getHorizontalSize(10.00),
                                                bottom: getVerticalSize(17.77)),
                                            child: Text("lbl_x1".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .textstyleoswaldregular206
                                                    .copyWith(
                                                        fontSize:
                                                            getFontSize(20))))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      right: getHorizontalSize(18.73)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(54.59),
                                      width: getHorizontalSize(158.45),
                                      decoration: AppDecoration
                                          .textstyleoswaldregular2010,
                                      child: Text("lbl15".tr,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .textstyleoswaldregular2010
                                              .copyWith(
                                                  fontSize: getFontSize(20)))))
                            ]))
                  ]))
        ]));
  }

  onTapGroup100000084() {
    Get.toNamed(AppRoutes.task31Screen);
  }

  onTapGroup100000085() {
    Get.toNamed(AppRoutes.task32Screen);
  }

  onTapGroup100000086() {
    Get.toNamed(AppRoutes.task33Screen);
  }
}
