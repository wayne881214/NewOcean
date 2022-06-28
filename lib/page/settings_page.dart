import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('設定'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),

  );
}
