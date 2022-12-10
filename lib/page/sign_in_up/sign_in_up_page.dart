import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../firebase/store_service.dart';
import '../../model/achievements_model/achievement_model.dart';
import 'authentication_service.dart';

// 标题文字大小
const double kTitleTextSize = 24;
// 内容体文字大小
const double kBodyTextSize = 14;
// 按钮文字大小
const double kBtnTextSize = 18;
// 按钮圆角半径
const double kBtnRadius = 24;
// 输入框边框圆角半径
const double kInputBorderRadius = 5;
// icon 大小
const double kIconSize = 24;
// icon 盒子大小
const double kIconBoxSize = 56;
// Light 字重
const FontWeight kLightFontWeight = FontWeight.w300;
// Medium 字重
const FontWeight kMediumFontWeight = FontWeight.w500;

const Color kBgColor = Color(0xFFFEDCE0);
// 文字颜色
const Color kTextColor = Color(0xFF3D0007);
// 按钮开始颜色
const Color kBtnColorStart = Color(0xFFF89500);
// 按钮结束颜色
const Color kBtnColorEnd = Color(0xFFFA6B74);
// 按钮投影颜色
const Color kBtnShadowColor = Color(0x33D83131);
// 输入框边框颜色
const Color kInputBorderColor = Color(0xFFECECEC);

// 按钮渐变背景色
const LinearGradient kBtnLinearGradient = LinearGradient(
  colors: [
    kBtnColorStart,
    kBtnColorEnd,
  ],
);

const List<BoxShadow> kBtnShadow = [
  BoxShadow(
    color: kBtnShadowColor,
    offset: Offset(0, 8),
    blurRadius: 20,
  )
];

// 标题文字样式
const TextStyle kTitleTextStyle = TextStyle(
  fontSize: kTitleTextSize,
  color: kTextColor,
  fontWeight: kMediumFontWeight,
);

// 内容文字样式
const TextStyle kBodyTextStyle = TextStyle(
  fontSize: kBodyTextSize,
  color: kTextColor,
  fontWeight: kLightFontWeight,
);
// 按钮文字样式
const TextStyle kBtnTextStyle = TextStyle(
  color: kBtnColorStart,
  fontSize: kBtnTextSize,
  fontWeight: kMediumFontWeight,
);
// 输入框边框
InputBorder kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kInputBorderRadius),
  borderSide: BorderSide(
    width: 1,
    color: kInputBorderColor,
  ),
);

class LoginClipper extends CustomClipper<Path> {
  // 第一个点
  @override
  Path getClip(Size size) {
    // 第四个点

    Path path = Path();
    // 移动到第一个点
    path.moveTo(0.0, 54.0);
    //第一阶段 三阶贝塞尔曲线
    path.cubicTo(20.0, 25.0, 81.0, -8.0, 160.0, 20.0);
    //第二阶段 三阶贝塞尔曲线
    path.cubicTo(216.0, 38.0, 280.0, 73.0, 280.0, 44.0);
    //第三阶段 三阶贝塞尔曲线
    path.cubicTo(280.0, -11.0, 330.0, 8.0, size.width, .0);
    // 连接到右下角
    path.lineTo(size.width, size.height);
    // 连接到左下角
    path.lineTo(0, size.height);
    //闭合
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this.hashCode != oldClipper.hashCode;
  }
}

class SignInUpPage extends StatelessWidget {
  final database = FirebaseDatabase.instance.reference();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final OutlineInputBorder kInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(
      color: kInputBorderColor,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Image.asset('assets/images/New Ocean (1).png', height: 250),
          Column(
            children: [
              SizedBox(height: 180),
              ClipPath(
                  clipper: LoginClipper(),
                  child: SingleChildScrollView(
                      child: Container(
                          color: Colors.white,
                          width: double.maxFinite,
                          padding: EdgeInsets.all(32),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 36),
                                Text(
                                  'Register/Login',
                                  style: kTitleTextStyle,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Your Name',
                                  style: kBodyTextStyle,
                                ),
                                SizedBox(height: 4),
                                TextField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                      labelText: "Name",
                                      hintText: "Name",
                                      border: kInputBorder,
                                      focusedBorder: kInputBorder,
                                      enabledBorder: kInputBorder,
                                      prefixIcon: Container(
                                        width: kIconBoxSize,
                                        height: kIconBoxSize,
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "assets/images/email.png",
                                          width: kIconSize,
                                          height: kIconSize,
                                        ),
                                      ),
                                    ),
                                    obscureText: false,
                                    style: kBodyTextStyle.copyWith(
                                      fontSize: 18,
                                    )),
                                SizedBox(height: 16),
                                Text(
                                  'Your Email',
                                  style: kBodyTextStyle,
                                ),
                                SizedBox(height: 4),
                                TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      labelText: "Email",
                                      hintText: "Email",
                                      border: kInputBorder,
                                      focusedBorder: kInputBorder,
                                      enabledBorder: kInputBorder,
                                      prefixIcon: Container(
                                        width: kIconBoxSize,
                                        height: kIconBoxSize,
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "assets/images/email.png",
                                          width: kIconSize,
                                          height: kIconSize,
                                        ),
                                      ),
                                    ),
                                    obscureText: false,
                                    style: kBodyTextStyle.copyWith(
                                      fontSize: 18,
                                    )),
                                SizedBox(height: 16),
                                Text(
                                  'Your Password',
                                  style: kBodyTextStyle,
                                ),
                                SizedBox(height: 4),
                                TextField(
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      hintText: "password",
                                      border: kInputBorder,
                                      focusedBorder: kInputBorder,
                                      enabledBorder: kInputBorder,
                                      prefixIcon: Container(
                                        width: kIconBoxSize,
                                        height: kIconBoxSize,
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          "assets/images/password.png",
                                          width: kIconSize,
                                          height: kIconSize,
                                        ),
                                      ),
                                    ),
                                    obscureText: true,
                                    style: kBodyTextStyle.copyWith(
                                      fontSize: 18,
                                    )),
                                SizedBox(height: 32),
                                Row(
                                  children: [
                                    Spacer(),
                                    GestureDetector(
                                      onTap: () async {
                                        var name = nameController.text.trim();
                                        var email = emailController.text.trim();
                                        var password =
                                            passwordController.text.trim();
                                        try {
                                          FirebaseAuth auth =
                                              FirebaseAuth.instance;
                                          UserCredential userCredential =
                                              await auth
                                                  .createUserWithEmailAndPassword(
                                                      email: email,
                                                      password: password);
                                          if (userCredential.user != null) {
                                            DatabaseReference userRef =
                                                FirebaseDatabase.instance
                                                    .reference()
                                                    .child('Users/');
                                            String uid =
                                                userCredential.user!.uid;
                                            await userRef.child(uid).set({
                                              'name': name,
                                              'email': email,
                                              'uid': uid,
                                              'ststus': 'Unavalible',
                                              'password': password,
                                              'profileImage': 'https://firebasestorage.googleapis.com/v0/b/newocean-444d7.appspot.com/o/turtle.png?alt=media&token=cd499869-ec68-4c8e-89fa-3c0574fde393'
                                            });
                                            DatabaseReference taskRef =
                                                FirebaseDatabase.instance
                                                    .ref()
                                                    .child('Tasks/')
                                                    .child(uid);
                                            for (int i = 1; i < 8; i++)
                                              await taskRef
                                                  .child('task$i')
                                                  .set({
                                                'state': 0,
                                                'id': i,
                                              });
                                            DatabaseReference animalRef =
                                            FirebaseDatabase.instance
                                                .ref()
                                                .child('Animals/')
                                                .child(uid);
                                            for (int i = 1; i < 8; i++)
                                              await animalRef
                                                  .child('animal$i')
                                                  .set({
                                                'state': 0,
                                                'id': i,
                                              });
                                            users.add({
                                              'name': name,
                                              'email': email,
                                              'uid': uid,
                                              'ststus': 'Unavalible',
                                            });
                                            Achievement.initAchievements();
                                            setMoney(100);
                                            print('success');
                                          }
                                        } catch (e) {
                                          print('error $e');
                                        }
                                        context
                                            .read<AuthenticationService>()
                                            .signUp(
                                              email:
                                                  emailController.text.trim(),
                                              password: passwordController.text
                                                  .trim(),
                                            );
                                      },
                                      child: Container(
                                        width: 160,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          gradient: kBtnLinearGradient,
                                          boxShadow: kBtnShadow,
                                          borderRadius:
                                              BorderRadius.circular(kBtnRadius),
                                        ),
                                        alignment: Alignment.center,
                                        child: Row(
                                          children: [
                                            SizedBox(width: 34),
                                            Text(
                                              "註冊",
                                              style: kBtnTextStyle.copyWith(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Spacer(),
                                            Image.asset(
                                              'assets/images/icons/icon_arrow_right.png',
                                              width: kIconSize,
                                              height: kIconSize,
                                            ),
                                            SizedBox(width: 24),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Spacer(),
                                    GestureDetector(
                                      onTap: () async {
                                        var email = emailController.text.trim();
                                        var password =
                                            passwordController.text.trim();
                                        context
                                            .read<AuthenticationService>()
                                            .signIn(
                                              email:
                                                  emailController.text.trim(),
                                              password: passwordController.text
                                                  .trim(),
                                            );
                                      },
                                      child: Container(
                                        width: 160,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          gradient: kBtnLinearGradient,
                                          boxShadow: kBtnShadow,
                                          borderRadius:
                                              BorderRadius.circular(kBtnRadius),
                                        ),
                                        alignment: Alignment.center,
                                        child: Row(
                                          children: [
                                            SizedBox(width: 34),
                                            Text(
                                              "登入",
                                              style: kBtnTextStyle.copyWith(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Spacer(),
                                            Image.asset(
                                              'assets/images/icons/icon_arrow_right.png',
                                              width: kIconSize,
                                              height: kIconSize,
                                            ),
                                            SizedBox(width: 24),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ])))),
            ],
          ),
          // Positioned(
          //   top: 64,
          //   left: 28,
          //   child: BackIcon(),
          // )
        ],
      ),
    );

  }
}
