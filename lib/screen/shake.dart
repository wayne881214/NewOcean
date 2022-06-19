import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:newocean/widget/shake_dialog_widget.dart';
class shake extends StatefulWidget {
  @override
  _ShakeState createState() => _ShakeState();
}

class _ShakeState extends State<shake> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('摇一摇'),
      ),

      body: Center(
          child: ElevatedButton(
         onPressed: () {
           showDialog<bool>(
             context: context,
             barrierDismissible: true,
             builder: (BuildContext context) => task3showDialog(),
           ).then((onValue) {
             if (onValue != null) {
               // 点击确定后返回的业务逻辑。
             }
           });
    },
    child: Text('shake'),
    ),
    )
    );
  }
}
