import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sensors/sensors.dart';
import 'package:flutter/cupertino.dart';

class shake extends StatefulWidget {
  @override
  _ShakeState createState() => _ShakeState();
}

class _ShakeState extends State<shake> {
  /// 是否已经显示摇一摇弹窗。
  int number=0;

  @override
  void initState() {
    accelerometerEvents.listen((AccelerometerEvent event) {
      // 摇一摇阀值,不同手机能达到的最大值不同，如某品牌手机只能达到20。
      int value = 15;
      if (event.x >= value ||
          event.x <= -value ||
          event.y >= value ||
          event.y <= -value ||
          event.z >= value ||
          event.z <= -value) {
        setState(() {
          number++;
        });
        if (number >= 10) {
          setState(() {
            number=0;
          });
          showDialog<bool>(
            context: context,
            barrierDismissible: true,
            builder: (BuildContext context) {
              return CupertinoAlertDialog(
                title: Text('海豚任務'),
                content: Text('恭喜你完成任務'),
                actions: [
                  CupertinoDialogAction(
                    child: Text('確定'),
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                  ),
                ],
              );
            },
          ).then((onValue) {
            if (onValue != null) {
              // 点击确定后返回的业务逻辑。
            }
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('摇一摇'),
      ),
      body: Center(
        child: Text('Tapped: $number'),
      ),
    );
  }
}