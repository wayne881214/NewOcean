import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../../firebase/log_service.dart';
import '../../model/achievements_model/logs_model.dart';

List jsonResponse = [];

class LogList extends StatefulWidget {
  @override
  _LogList createState() => _LogList();
}

class _LogList extends State<LogList> {
  @override
  void initState() {
    final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
    DatabaseReference Ref =
        FirebaseDatabase.instance.ref('Logs/' + currentUser);
    jsonResponse = [];
    Ref.onChildAdded.listen((event) async {
      Map userLogValue = (event.snapshot.value as Map);
      this.setState(
          () => jsonResponse.add(new Map<String, dynamic>.from(userLogValue)));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: LogListView()),
      ),
    );
  }
}

class LogListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Log>>(
      future: _fetchLogs(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Log>? data = snapshot.data;
          return _logsListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<Log>> _fetchLogs() async {
    return jsonResponse.map((log) => new Log.fromJson(log)).toList();
  }

  ListView _logsListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _tile(data[index], Icons.work);
        });
  }

  ListTile _tile(Log data, IconData icon) {
    var Mission = [
      ["其他", "其他", "其他", "其他", "其他"],
      ["其他", "1-1 拯救海龜", "1-2 少喝包裝飲料", "1-3 使用環保餐具", "已完成"],
      ["其他", "2-1 拯救海獅任務", "2-2 重複使用橡皮圈", "2-3 使用環保餐任務", "已完成"],
      ["其他", "3-1 幫助小鯨魚回家", "3-2 減碳行動(一)", "3-3 減碳行動(二)", "已完成"],
      ["其他", "4-1 生成專屬用具", "4-2 環保用具檢查", "4-3 環保商店", "已完成"],
      ["其他", "5-1 標記環保商店", "5-2 標記垃圾桶", "5-3 垃圾桶打卡", "已完成"],
      ["其他", "6-1 標記環保商店", "6-2 標記垃圾桶", "6-3 垃圾桶打卡", "已完成"],
      ["其他", "7-1 擺脫塑膠袋", "7-2 重複使用環保袋<一>", "7-3 重複使用環保袋<二>", "已完成"]
    ];

    String title = Mission[data.task_id][data.task_state];
    String subtitle = data.date;
    String carbon = (data.carbon/1000).toString();
    return ListTile(
      title: Text("任務:" + title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text("碳足跡減量:" + carbon + "g\n" + "完成時間:" + subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
  }
}
