import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/math_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../controller/task1_controller.dart';
import '../models/group59_item_model.dart';
import 'package:flutter/material.dart';
// import 'package:peter1421_s_application17/core/app_export.dart';



// ignore: must_be_immutable
class task_template3 extends StatelessWidget {
  task_template3(this.group59ItemModelObj);

  Group59ItemModel group59ItemModelObj;

  var controller = Get.find<Task1Controller>();

  @override
  Widget build(BuildContext context) {

    var title="3.拯救海龜???";
    var des="海龜很可憐,海龜很可憐,海龜很可憐,海龜很可憐,海龜很可憐,海龜很可憐,海龜很可憐,海龜很可憐,海龜很可憐,海龜很可憐,";
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.only(
          top: getVerticalSize(
            15.00,
          ),
          right: getHorizontalSize(
            2.00,
          ),
          bottom: getVerticalSize(
            15.00,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
          border: Border.all(
            color: ColorConstant.black90019,
            width: getHorizontalSize(
              3.00,
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
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
                                              title,
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
                                              des,
                                              maxLines:
                                              null,
                                              textAlign:
                                              TextAlign.left,
                                              style: AppStyle.textstylerobotoromanregular14.copyWith(fontSize: getFontSize(14))))
                                    ]
                                ))

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
            ]
        ),
      ),
    );
  }
  onTapGroup51() {
    Get.toNamed(AppRoutes.task4Screen);
  }
  onTapTxttf() {
    Get.defaultDialog(
        onConfirm: () => Get.back(), title: "system", middleText: "great!");
  }
}
