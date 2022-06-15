import '../animal_locked_screen/widgets/animal_locked_item_widget.dart';
import 'controller/animal_locked_controller.dart';
import 'models/animal_locked_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:peter1421_s_application21/core/app_export.dart';
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
class AnimalLockedScreen extends GetWidget<AnimalLockedController> {
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
                                          left: getHorizontalSize(109.42),
                                          top: getVerticalSize(41.50),
                                          right: getHorizontalSize(48.00),
                                          bottom: getVerticalSize(15.68)),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text("lbl13".tr,
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
                                                        left: getHorizontalSize(
                                                            37.41),
                                                        top: getVerticalSize(
                                                            3.69)),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            22.13),
                                                        width:
                                                            getHorizontalSize(
                                                                24.00),
                                                        child: SvgPicture.asset(
                                                            ImageConstant.imgX4,
                                                            fit: BoxFit.fill))))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(50.00),
                                      width: getHorizontalSize(350.50),
                                      margin: EdgeInsets.only(
                                          left: getHorizontalSize(25.00),
                                          top: getVerticalSize(15.00),
                                          right: getHorizontalSize(14.50)),
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        right: getHorizontalSize(
                                                            0.50)),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    25.00)),
                                                        border: Border.all(
                                                            color: ColorConstant
                                                                .bluegray100,
                                                            width:
                                                                getHorizontalSize(
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
                                                              offset:
                                                                  Offset(0, 4))
                                                        ]),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapTxttf();
                                                                      },
                                                                      child: Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: getHorizontalSize(
                                                                                  44.00),
                                                                              top: getVerticalSize(
                                                                                  15.00),
                                                                              right: getHorizontalSize(
                                                                                  44.00),
                                                                              bottom: getVerticalSize(
                                                                                  15.00)),
                                                                          child: Text(
                                                                              "lbl14".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.textstylerobotoromanbold20.copyWith(fontSize: getFontSize(20))))))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Container(
                                                    height:
                                                        getVerticalSize(50.00),
                                                    width: getHorizontalSize(
                                                        116.50),
                                                    margin: EdgeInsets.only(
                                                        left: getHorizontalSize(
                                                            10.00)),
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: ClipRRect(
                                                                  borderRadius: BorderRadius.only(
                                                                      topLeft: Radius.circular(getHorizontalSize(
                                                                          25.00)),
                                                                      topRight: Radius.circular(getHorizontalSize(
                                                                          0.00)),
                                                                      bottomLeft: Radius.circular(getHorizontalSize(
                                                                          25.00)),
                                                                      bottomRight:
                                                                          Radius.circular(getHorizontalSize(
                                                                              0.00))),
                                                                  child: Container(
                                                                      height: getVerticalSize(50.00),
                                                                      width: getHorizontalSize(116.50),
                                                                      child: SvgPicture.asset(ImageConstant.imgChangepage, fit: BoxFit.fill)))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: getHorizontalSize(
                                                                          23.00),
                                                                      top: getVerticalSize(
                                                                          15.00),
                                                                      right: getHorizontalSize(
                                                                          23.00),
                                                                      bottom: getVerticalSize(
                                                                          15.00)),
                                                                  child: Text(
                                                                      "lbl15"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .textstylerobotoromanbold20
                                                                          .copyWith(fontSize: getFontSize(20)))))
                                                        ]))),
                                            Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapTxttf1();
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left:
                                                                getHorizontalSize(
                                                                    113.50),
                                                            top: getVerticalSize(
                                                                15.00),
                                                            right:
                                                                getHorizontalSize(
                                                                    113.50),
                                                            bottom:
                                                                getVerticalSize(
                                                                    15.00)),
                                                        child: Text("lbl16".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .textstylerobotoromanbold20
                                                                .copyWith(
                                                                    fontSize:
                                                                        getFontSize(20))))))
                                          ]))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      top: getVerticalSize(42.00),
                                      right: getHorizontalSize(10.00)),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.animalLockedModelObj
                                          .value.animalLockedItemList.length,
                                      itemBuilder: (context, index) {
                                        AnimalLockedItemModel model = controller
                                            .animalLockedModelObj
                                            .value
                                            .animalLockedItemList[index];
                                        return AnimalLockedItemWidget(model);
                                      })))
                            ]))))));
  }

  onTapImgX() {
    Get.toNamed(AppRoutes.animalAllScreen);
  }

  onTapTxttf() {
    Get.toNamed(AppRoutes.animalAllScreen);
  }

  onTapTxttf1() {
    Get.toNamed(AppRoutes.animalUnlockedScreen);
  }
}
