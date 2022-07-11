import 'package:date_format/date_format.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/fitness_app/fitness_app_home_screen.dart';

class AchievementsPage extends StatefulWidget {
  @override
  const AchievementsPage({Key? key, this.DailyApi,this.WeeklyApi}) : super(key: key);
  final Map? DailyApi;
  final Map? WeeklyApi;
  _AchievementsPage createState() => _AchievementsPage();
}

class _AchievementsPage extends State<AchievementsPage> {
  @override

  // Map DailyApi = {"daily": 0, "yesterday": 0};
  // Map WeeklyApi = {
  //   "userData": [0, 0, 0, 0, 0, 0, 0],
  //   "avgsData": [20, 120, 40, 40, 30, 20, 30]
  // };
  void initState() {
  //   List jsonResponse = [];
  // // Map api ={"daily":0,"yesterday":0};
  // DailyApi = {"daily": 0, "yesterday": 0};
  // WeeklyApi = {
  //   "userData": [0, 0, 0, 0, 0, 0, 0],
  //   "avgsData": [20, 120, 40, 40, 30, 20, 30]
  // };
  // DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/log');
  // Ref.onChildAdded.listen((event)  {
  //   Map userLogValue = (event.snapshot.value as Map);
  //   jsonResponse.add(userLogValue);
  //   print("jsonResponse $jsonResponse");
  //   DateTime my_diary = DateTime.parse(userLogValue["date"]);
  //   DateTime today = DateTime.now();
  //   DateTime yesterday = new DateTime.fromMillisecondsSinceEpoch(
  //       DateTime.now().millisecondsSinceEpoch - 24 * 60 * 60 * 1000);
  //
  //   String myD = formatDate(my_diary, [yyyy, '-', mm, '-', dd]);
  //   String todayD = formatDate(today, [yyyy, '-', mm, '-', dd]);
  //   String yesterdayD = formatDate(yesterday, [yyyy, '-', mm, '-', dd]);
  //   if (myD == todayD) {
  //     DailyApi["daily"] += userLogValue["carbon"];
  //   }
  //   if (myD == yesterdayD) {
  //     DailyApi["yesterday"] += userLogValue["carbon"];
  //   }
  //   // weekly API
  //   var D = 7;
  //   for (var i = 0; i < D; i++) {
  //     DateTime yesterday_2 = new DateTime.fromMillisecondsSinceEpoch(
  //         DateTime.now().millisecondsSinceEpoch - 24 * 60 * 60 * 1000 * i);
  //     String yesterday_2D = formatDate(yesterday_2, [yyyy, '-', mm, '-', dd]);
  //     if (myD == yesterday_2D) {
  //       setState(() {
  //         WeeklyApi["userData"][D - i - 1] += userLogValue["carbon"];
  //       });
  //     }
  //   }
  //   print("DailyApi $DailyApi");
  //   print("WeeklyApi $WeeklyApi");
  //   // super.initState();
  // });
  }

  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('成就'),
          centerTitle: true,
          backgroundColor: Color(0xFF00BFA5),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: FitnessAppHomeScreen(DailyApi:widget.DailyApi,WeeklyApi: widget.WeeklyApi),
      );
}
