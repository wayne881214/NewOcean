import 'package:flutter/material.dart';

import 'homescreen.dart';






void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyAppr());
}
// ignore: use_key_in_widget_constructors
class MyAppr extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      // ignore: prefer_const_constructors
      home: Homescreen(),
    );
  }
}