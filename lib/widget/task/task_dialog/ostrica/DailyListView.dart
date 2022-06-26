import 'dart:async';
import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(DailyList());
// }

List<dynamic> jsonResponse = [];
int counter = 0;

class DailyList extends StatefulWidget {
  @override
  _DailyList createState() => _DailyList();
}

class _DailyList extends State<DailyList> {
  @override
  void initState() {
    DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/log');
    jsonResponse = [];
    Ref.onChildAdded.listen((event) async {
      Map userLogValue = (event.snapshot.value as Map);
      this.setState(
          () => jsonResponse.add(new Map<String, dynamic>.from(userLogValue)));
      print("jsonResponse:$jsonResponse\n\n\n");
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return JobsListView();
  }
}

class Job {
  final String id;
  final String date;
  final int carbon;
  final int task;

  Job(
      {required this.id,
      required this.carbon,
      required this.date,
      required this.task});

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      task: json['task'],
      id: json['id'],
      carbon: json['carbon'],
      date: json['date'],
    );
  }
}

class JobsListView extends StatefulWidget {
  @override
  _JobsListView createState() => _JobsListView();
}

class _JobsListView extends State<JobsListView> {
  @override
  //初始化

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Job>>(
      future: _fetchJobs(),
      builder: (context, AsyncSnapshot<List<Job>> snapshot) {
        if (snapshot.hasData) {
          List<Job>? data = snapshot.data;
          return _jobsListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<Job>> _fetchJobs() async {
    List jsonResponse3 = [
      {
        "date": "2022-06-21 Tuesday 12:35:48",
        "task": 4,
        "carbon": 500,
        "id": "55555"
      },
      {
        "date": "2022-06-21 Tuesday 12:35:48",
        "task": 4,
        "carbon": 500,
        "id": "555555"
      }
    ];


    return jsonResponse.map((job) => new Job.fromJson(job)).toList();
    //
    // final jobsListAPIUrl = 'https://mock-json-service.glitch.me/';
    // final response = await http.get(jobsListAPIUrl);
    // if (response.statusCode == 200) {
    //   // List jsonResponse = json.decode(response.body);
    //   List jsonResponse = [
    //     {
    //       "date": "2022-06-21 Tuesday 12:35:48",
    //       "carbon": 400,
    //       "id": "3-1",
    //     },
    //     {
    //       "date": "2022-06-21 Tuesday 12:35:48",
    //       "carbon": 500,
    //       "id": "3-2",
    //     }
    //   ];
    //   print("showApi $jsonResponse");
    //
    //   return jsonResponse.map((job) => new Job.fromJson(job)).toList();
    // } else {
    //   throw Exception('Failed to load jobs from API');
    // }
  }

  ListView _jobsListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _tile(data[index].id, data[index].date,
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
  void getApi() async {
    DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/log');
    List responseApi = [];
    Ref.onChildAdded.listen((event) {
      // String userLogKey = (event.snapshot.key as String);
      Map userLogValue = (event.snapshot.value as Map);
      responseApi.add(userLogValue);
      // print("userLogKey:$userLogKey userLogValue:$userLogValue");
      // returnApi[userLogKey] = userLogValue;
      print("TTTTT $responseApi");
      // setState(() {});
    });
  }
}
