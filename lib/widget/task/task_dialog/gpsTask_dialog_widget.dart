import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';
import '../../../firebase/database_service.dart';
import '../../../firebase/log_service.dart';
import '../../../model/achievements_model/logs_model.dart';
import '../../../page/map/show_map_page.dart';

class gpsTask1showDialog extends StatefulWidget {
  @override
  _gpsTask1showDialog createState() => _gpsTask1showDialog();
}
class _gpsTask1showDialog extends State<gpsTask1showDialog> {
  int number = 0;
  String img = "https://turtleacademy.com/images/turtle.gif";
  String result = "取消";

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
        if (number < 10) {
          setState(() {
            number += 1;
          });
        }
        if (number == 10) {
          setState(() {
            img = "https://memeprod.ap-south-1.linodeobjects.com/user-gif-thumbnail/eb4e861fd45a3a55cd2683ab47231d49.gif";
            result = "完成任務";
          });
        }
        // if(op==1){
        //   setState(() {
        //     filename=filename;
        //   };
        // }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.all(new Radius.circular(32.0))),
      child: Container(
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: new LinearGradient(colors: <Color>[
              Color(0xffB3E7E7),
              Color(0xffBCCFF5),
            ], begin: Alignment.topLeft, end: Alignment.topRight)),
        child: Card(
            elevation: 0,
            color: Colors.transparent,
            child: SizedBox(
                width: 500,
                height: 500,
                child: Center(
                    child: Column(children: [
                      Expanded(
                        flex: 8,
                        child: ShowMapPage(),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("新增/打卡環保商店位置"),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            width: 100, // <-- Your width
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                _checkAndPush();
                                Navigator.of(context).pop(true);
                              },
                              child: Text('$result'),
                            ),
                          ))
                    ])))),
      ),
    );
  }
  void _pushLog(){
    Log resquestLog = Log.addTaskLog(5 ,1);
    addLog(resquestLog);
    changeTask(5 ,1);
  }
  void _checkAndPush(){
    if(result=="完成任務"){
      _pushLog();
    }
  }
}

