import 'package:date_format/date_format.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'fitness_app_theme.dart';
import 'models/tabIcon_data.dart';
import 'my_diary/my_diary_screen.dart';

// void main() => runApp(const MyApp2());
//
// class MyApp2 extends StatelessWidget {
//   const MyApp2({Key? key,this.DailyApi,this.WeeklyApi}) : super(key: key);
//   final Map? DailyApi;
//   final Map? WeeklyApi;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: FitnessAppHomeScreen(),
//     );
//   }
// }

class FitnessAppHomeScreen extends StatefulWidget {
  const FitnessAppHomeScreen({Key? key, this.DailyApi,this.WeeklyApi}) : super(key: key);
  final Map? DailyApi;
  final Map? WeeklyApi;
  @override
  _FitnessAppHomeScreenState createState() => _FitnessAppHomeScreenState();
}

class _FitnessAppHomeScreenState extends State<FitnessAppHomeScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: FitnessAppTheme.background,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);


    super.initState();
    tabBody = MyDiaryScreen(animationController: animationController,DailyApi:widget.DailyApi,WeeklyApi: widget.WeeklyApi);
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FitnessAppTheme.background,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  // bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }
}
