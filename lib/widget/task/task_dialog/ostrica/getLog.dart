import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';

import '../../../../firebase_options.dart';

Map mapData = {
  "2020": [
    {"mm": "20一月"},
    {"mm": "20二月"},
    {"mm": "20三月"},
    {"mm": "20四月"}
  ],
  "2019": [
    {"mm": "19一月"},
    {"mm": "19二月"},
    {"mm": "19三月"},
    {"mm": "19四月"}
  ]
};
Map returnApi = {};
Map returnApiTemplate = {
  "4-2-1": {"date": "2022-06-21 Tuesday 12:35:48", "task": 4, "carbon": 500},
  "4-2-2": {"date": "2022-06-21 Tuesday 12:35:48", "task": 4, "carbon": 500}
};

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(getLog());
}

class getLog extends StatefulWidget {
  @override
  _getLog createState() => _getLog();

}

class _getLog extends State<getLog> {
  @override
  //初始化
  // OverTaskCard card = OverTaskCard(data: returnApi);
  List a=[];

  void initState() {
    // DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/log');
    // Ref.onChildAdded.listen((event) {
    //   String userLogKey = (event.snapshot.key as String);
    //   Map userLogValue = (event.snapshot.value as Map);
    //   print("userLogKey:$userLogKey userLogValue:$userLogValue");
    //   returnApi[userLogKey] = userLogValue;
    //   print("TTTTT $returnApi");
    //   setState(() {});
    // });
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('資料庫測試'),
        centerTitle: true,
        backgroundColor: Color(0xFF00BFA5),
      ),body: Text("data")
    );
  }
  void getApi(){
    DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/log');
    Ref.onChildAdded.listen((event) {
      String userLogKey = (event.snapshot.key as String);
      Map userLogValue = (event.snapshot.value as Map);
      print("userLogKey:$userLogKey userLogValue:$userLogValue");
      returnApi[userLogKey] = userLogValue;
      print("TTTTT $returnApi");
      // setState(() {});
    });
  }
  // List<Widget> _listView() {
  //   List<Widget> listWidget = [];
  //   returnApiTemplate.forEach((k, v) {
  //     listWidget.add(Text("任務項:$k"));
  //     v.map((f) {
  //       listWidget.add(Column(
  //         children: <Widget>[
  //           Text("Data: $f"),
  //         ],
  //       ));
  //       f.map((ff) {
  //         // listWidget.add(Column(
  //         //   children: <Widget>[
  //         //     Text("Data: $ff"),
  //         //   ],
  //         // ));
  //       });
  //     }).toList();
  //   });
  //   return listWidget;
  // }
}
