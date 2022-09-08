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
          return _tile(data[index].task_id.toString(), data[index].date,
              data[index].carbon.toString(), Icons.work);
        });
  }

  ListTile _tile(String title, String subtitle, String carbon, IconData icon) =>
      ListTile(
        title: Text("任務ID:" + title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text("碳足跡減量:" + carbon + "\n" + "完成時間:" + subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
}
