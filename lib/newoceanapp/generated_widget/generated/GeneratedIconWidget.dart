import 'package:flutter/material.dart';
import 'package:flutterapp/newoceanapp/generated_widget/generated/GeneratedFacebookWidget.dart';
import 'package:flutterapp/newoceanapp/generated_widget/generated/GeneratedToggleWidget.dart';

/* Group Icon
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedIconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.372093200683594,
      height: 35.372093200683594,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Positioned(
              left: 0.0,
              top: 0.0,
              right: null,
              bottom: null,
              width: 35.372093200683594,
              height: 35.372093200683594,
              child: GeneratedToggleWidget(),
            ),
            Positioned(
              left: 14.058128356933594,
              top: 10.430221557617188,
              right: null,
              bottom: null,
              width: 7.255814075469971,
              height: 14.511628150939941,
              child: GeneratedFacebookWidget(),
            )
          ]),
    );
  }
}
