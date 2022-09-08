import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../constants/achievements_theme.dart';
import '../../../firebase/log_service.dart';
import '../../../model/achievements_model/achievement_model.dart';
import '../../../model/achievements_model/logs_model.dart';
import '../../../widget/achievements/mediterranean_diet_view.dart';

List jsonResponse = [];

class AchievementsList extends StatefulWidget {
  @override
  _AchievementsList createState() => _AchievementsList();
}

class _AchievementsList extends State<AchievementsList> {
  @override
  void initState() {
    updateAchievement();
    // updateAchievement();
    final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
    DatabaseReference Ref =
        FirebaseDatabase.instance.ref('Achievements/' + currentUser);
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AchievementsListView(),
      ),
    );
  }
}

class AchievementsListView extends StatefulWidget {
  @override
  _AchievementsListView createState() => new _AchievementsListView();
}

class _AchievementsListView extends State<AchievementsListView> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Achievement>>(
      future: _fetchLogs(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Achievement>? data = snapshot.data;
          return _logsListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<Achievement>> _fetchLogs() async {
    return jsonResponse
        .map((achievement) => new Achievement.fromJson(achievement))
        .toList();
  }

  ListView _logsListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          double progress =
              (data[index].points / data[index].target).toDouble() * 100;
          progress=(progress<=100)?progress:100;
          return _tile(data[index].name.toString(), data[index].description,
              progress, Icons.work);
        });
  }

  int _count = 0;

  @override
  Card _tile(String title, String subtitle, double progress, IconData icon) {
    return Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 4.0,
            color: Colors.green.shade300,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              ListTile(
                minVerticalPadding: 30,
                onTap: () => setState(() => _count++),
                title: Text(title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    )),
                subtitle: Text("$subtitle \n進度:$progress%"),
                leading: Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 120.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  height: 20,
                  width: 300,
                  decoration: BoxDecoration(
                    color: HexColor('#00aeae').withOpacity(0.2),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 300 * (progress / 100),
                        height: 20,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            HexColor('#00aeae'),
                            HexColor('#00aeae').withOpacity(0.5),
                          ]),
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ])));
  }
}
