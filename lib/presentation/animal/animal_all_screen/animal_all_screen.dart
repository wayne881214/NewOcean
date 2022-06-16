import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';


import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/math_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../animal_all_screen/widgets/animal_all_item_widget.dart';
import 'controller/animal_all_controller.dart';
import 'models/animal_all_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AnimalAllScreen extends GetWidget<AnimalAllController> {
  @override
  Widget build(BuildContext context) {
    String all="所有動物";
    String locked="未解鎖";
    String unlocked="已解鎖";
    List<String> fish=["No.0","No.1翻車魚","NO.2\n河豚","NO.3\n???","NO.4\n???","NO.5\n游泳圈海豚","NO.6\n???","NO.7\n花嫁海豚","N0.8\n???"];
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                decoration: BoxDecoration(color: ColorConstant.whiteA700),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              padding: EdgeInsets.only(
                                  top: getVerticalSize(16.00),
                                  bottom: getVerticalSize(104.00)),
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(5.00)),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: getHorizontalSize(10.00),
                                                right: getHorizontalSize(
                                                    10.00)),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            25.00)),
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .bluegray100,
                                                    width: getHorizontalSize(
                                                        0.30)),
                                                boxShadow: [
                                                  BoxShadow(
                                                      color: ColorConstant
                                                          .black9003f,
                                                      spreadRadius:
                                                          getHorizontalSize(
                                                              2.00),
                                                      blurRadius:
                                                          getHorizontalSize(
                                                              2.00),
                                                      offset: Offset(0, 4))
                                                ]),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    116.50),
                                                            padding: EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                        30.00),
                                                                top:
                                                                    getVerticalSize(
                                                                        14.00),
                                                                bottom:
                                                                    getVerticalSize(
                                                                        15.00)),
                                                            decoration:
                                                                AppDecoration
                                                                    .textstylerobotoromanbold201,
                                                            child: Text(
                                                                all,
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .textstylerobotoromanbold201
                                                                    .copyWith(
                                                                        fontSize:
                                                                            getFontSize(20)))),
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapTxttf();
                                                            },
                                                            child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: getHorizontalSize(
                                                                        22.50),
                                                                    top: getVerticalSize(
                                                                        14.00),
                                                                    bottom: getVerticalSize(
                                                                        16.00)),
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
                                                      ]),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxttf1();
                                                      },
                                                      child: Padding(
                                                          padding: EdgeInsets.only(
                                                              top: getVerticalSize(
                                                                  15.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      29.00),
                                                              bottom:
                                                                  getVerticalSize(
                                                                      15.00)),
                                                          child: Text(unlocked,
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
                                                                          getFontSize(
                                                                              20)))))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    top:
                                                        getVerticalSize(43.00)),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          height: getVerticalSize(
                                                              174.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  310.00),
                                                          child: Obx(() =>
                                                              ListView.builder(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          10.00),
                                                                      right: getHorizontalSize(
                                                                          10.00)),
                                                                  scrollDirection:
                                                                      Axis
                                                                          .horizontal,
                                                                  physics:
                                                                      BouncingScrollPhysics(),
                                                                  itemCount: controller
                                                                      .animalAllModelObj
                                                                      .value
                                                                      .animalAllItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    AnimalAllItemModel
                                                                        model =
                                                                        controller
                                                                            .animalAllModelObj
                                                                            .value
                                                                            .animalAllItemList[index];
                                                                    return AnimalAllItemWidget(
                                                                        model,
                                                                        onTapImgPic:
                                                                            onTapImgPic);
                                                                  }))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  186.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  381.00),
                                                          margin: EdgeInsets.only(
                                                              top:
                                                                  getVerticalSize(
                                                                      27.00),
                                                              right:
                                                                  getHorizontalSize(
                                                                      4.00)),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Container(
                                                                        width: getHorizontalSize(205.00),
                                                                        margin: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(7.00), bottom: getVerticalSize(2.00)),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Container(
                                                                              height: getVerticalSize(145.00),
                                                                              width: getHorizontalSize(144.00),
                                                                              margin: EdgeInsets.only(left: getHorizontalSize(10.00), right: getHorizontalSize(10.00)),
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(145.00), width: getHorizontalSize(144.00), child: SvgPicture.asset(ImageConstant.imgGroup5712, fit: BoxFit.fill))),
                                                                                Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(39.50), right: getHorizontalSize(34.50)), child: Text(unlocked, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerocknrolloneregular100.copyWith(fontSize: getFontSize(100)))))
                                                                              ])),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(8.00), right: getHorizontalSize(10.00)),
                                                                              child: Text(fish[4], overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerobotoregular20.copyWith(fontSize: getFontSize(20))))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(right: getHorizontalSize(10.00)),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Container(
                                                                              height: getVerticalSize(150.00),
                                                                              width: getHorizontalSize(144.00),
                                                                              margin: EdgeInsets.only(left: getHorizontalSize(10.00), right: getHorizontalSize(10.00)),
                                                                              child: Stack(alignment: Alignment.center, children: [
                                                                                Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(top: getVerticalSize(5.00)), child: Container(height: getVerticalSize(145.00), width: getHorizontalSize(144.00), child: SvgPicture.asset(ImageConstant.imgGroup5701, fit: BoxFit.fill)))),
                                                                                Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(37.50), right: getHorizontalSize(36.50), bottom: getVerticalSize(5.00)), child: Text("lbl7".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerocknrolloneregular1001.copyWith(fontSize: getFontSize(100)))))
                                                                              ])),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(12.00), right: getHorizontalSize(10.00)),
                                                                              child: Text(fish[3], overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerobotoregular20.copyWith(fontSize: getFontSize(20))))
                                                                        ])))
                                                              ])),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: getVerticalSize(
                                                                      31.00)),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                30.00)),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Container(
                                                                                      height: getVerticalSize(145.00),
                                                                                      width: getHorizontalSize(144.00),
                                                                                      child: Stack(alignment: Alignment.centerRight, children: [
                                                                                        Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(145.00), width: getHorizontalSize(144.00), child: SvgPicture.asset(ImageConstant.img39, fit: BoxFit.fill))),
                                                                                        Align(
                                                                                            alignment: Alignment.centerRight,
                                                                                            child: Container(
                                                                                                height: getVerticalSize(114.00),
                                                                                                width: getHorizontalSize(130.00),
                                                                                                margin: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(15.00), right: getHorizontalSize(2.00), bottom: getVerticalSize(15.00)),
                                                                                                child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                  Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(64.14), width: getHorizontalSize(38.83), margin: EdgeInsets.only(left: getHorizontalSize(38.83), top: getVerticalSize(22.80), right: getHorizontalSize(38.83), bottom: getVerticalSize(22.80)), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.circular(getHorizontalSize(32.07))))),
                                                                                                  Align(alignment: Alignment.centerLeft, child: Image.asset(ImageConstant.imgImage61, height: getVerticalSize(114.00), width: getHorizontalSize(130.00), fit: BoxFit.fill))
                                                                                                ])))
                                                                                      ]))),
                                                                              Padding(padding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(5.00), right: getHorizontalSize(10.00)), child: Text(fish[5], overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerobotoregular20.copyWith(fontSize: getFontSize(20))))
                                                                            ])),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                7.00)),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  height: getVerticalSize(145.00),
                                                                                  width: getHorizontalSize(144.00),
                                                                                  margin: EdgeInsets.only(left: getHorizontalSize(10.00), right: getHorizontalSize(10.00)),
                                                                                  child: Stack(alignment: Alignment.center, children: [
                                                                                    Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(145.00), width: getHorizontalSize(144.00), child: SvgPicture.asset(ImageConstant.imgGroup5713, fit: BoxFit.fill))),
                                                                                    Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(39.50), right: getHorizontalSize(34.50)), child: Text("lbl7".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerocknrolloneregular100.copyWith(fontSize: getFontSize(100)))))
                                                                                  ])),
                                                                              Padding(padding: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(5.00), right: getHorizontalSize(10.00)), child: Text(fish[6], overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerobotoregular20.copyWith(fontSize: getFontSize(20))))
                                                                            ]))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  top: getVerticalSize(
                                                                      36.00)),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                25.00),
                                                                            top: getVerticalSize(
                                                                                5.00)),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Container(
                                                                                      height: getVerticalSize(145.00),
                                                                                      width: getHorizontalSize(144.00),
                                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                                        Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(145.00), width: getHorizontalSize(144.00), child: SvgPicture.asset(ImageConstant.img40, fit: BoxFit.fill))),
                                                                                        Align(
                                                                                            alignment: Alignment.center,
                                                                                            child: Container(
                                                                                                height: getVerticalSize(134.00),
                                                                                                width: getHorizontalSize(140.00),
                                                                                                margin: EdgeInsets.only(top: getVerticalSize(5.00), right: getHorizontalSize(4.00), bottom: getVerticalSize(6.00)),
                                                                                                child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                  Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(5.00), right: getHorizontalSize(1.00)), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(67.00)), child: Image.asset(ImageConstant.imgImage681, height: getSize(134.00), width: getSize(134.00), fit: BoxFit.fill)))),
                                                                                                  Align(
                                                                                                      alignment: Alignment.centerLeft,
                                                                                                      child: Container(
                                                                                                          height: getVerticalSize(112.00),
                                                                                                          width: getHorizontalSize(140.00),
                                                                                                          margin: EdgeInsets.only(top: getVerticalSize(10.00), bottom: getVerticalSize(10.00)),
                                                                                                          child: Stack(alignment: Alignment.bottomRight, children: [
                                                                                                            Align(alignment: Alignment.topRight, child: Container(height: getVerticalSize(83.84), width: getHorizontalSize(45.83), margin: EdgeInsets.only(left: getHorizontalSize(25.31), top: getVerticalSize(7.00), right: getHorizontalSize(25.31), bottom: getVerticalSize(10.00)), decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(41.92))))),
                                                                                                            Align(alignment: Alignment.bottomRight, child: Container(height: getVerticalSize(76.64), width: getHorizontalSize(68.15), margin: EdgeInsets.only(left: getHorizontalSize(10.00), top: getVerticalSize(10.00), bottom: getVerticalSize(0.36)), decoration: BoxDecoration(color: ColorConstant.whiteA701, borderRadius: BorderRadius.circular(getHorizontalSize(38.32))))),
                                                                                                            Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(right: getHorizontalSize(3.29)), child: Image.asset(ImageConstant.imgImage81, height: getVerticalSize(112.00), width: getHorizontalSize(136.71), fit: BoxFit.fill)))
                                                                                                          ])))
                                                                                                ])))
                                                                                      ]))),
                                                                              Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(30.50), right: getHorizontalSize(30.50)), child: Text(fish[7], overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerobotoregular20.copyWith(fontSize: getFontSize(20)))))
                                                                            ])),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: getHorizontalSize(
                                                                                5.00),
                                                                            right: getHorizontalSize(
                                                                                6.00)),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  height: getVerticalSize(150.00),
                                                                                  width: getHorizontalSize(144.00),
                                                                                  margin: EdgeInsets.only(left: getHorizontalSize(10.00), right: getHorizontalSize(10.00)),
                                                                                  child: Stack(alignment: Alignment.center, children: [
                                                                                    Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(top: getVerticalSize(5.00)), child: Container(height: getVerticalSize(145.00), width: getHorizontalSize(144.00), child: SvgPicture.asset(ImageConstant.imgGroup5611, fit: BoxFit.fill)))),
                                                                                    Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: getHorizontalSize(35.50), right: getHorizontalSize(38.50), bottom: getVerticalSize(5.00)), child: Text("lbl7".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerocknrolloneregular1002.copyWith(fontSize: getFontSize(100)))))
                                                                                  ])),
                                                                              Padding(padding: EdgeInsets.only(left: getHorizontalSize(10.00), right: getHorizontalSize(10.00)), child: Text(fish[8].tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.textstylerobotoregular20.copyWith(fontSize: getFontSize(20))))
                                                                            ]))
                                                                  ])))
                                                    ])))
                                      ]))))
                    ]))));
  }

  onTapImgPic() {
    Get.toNamed(AppRoutes.animalMainScreen);
  }

  onTapTxttf() {
    Get.toNamed(AppRoutes.animalUnlockedScreen);
  }

  onTapTxttf1() {
    Get.toNamed(AppRoutes.animalLockedScreen);
  }
}
