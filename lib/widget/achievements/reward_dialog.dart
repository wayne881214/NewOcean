import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/achievements_theme.dart';
import '../../model/achievements_model/achievement_model.dart';

class rewardDialog extends StatefulWidget {
  @override
  final Achievement? achievement;

  const rewardDialog({Key? key, this.achievement}) : super(key: key);

  _rewardDialog createState() => _rewardDialog();
}

class _rewardDialog extends State<rewardDialog> {
  int number = 0;
  String result = "取消";
  late Achievement achievement;

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    achievement = widget.achievement!;
    double progress =
        (achievement.points / achievement.target).toDouble() * 100;
    progress = (progress <= 100) ? progress : 100;
    if (progress >= 100) {
      result = "領取獎勵";
    } else {
      result = "尚未完成($progress)%";
    }
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
                width: 300,
                height: 200,
                child: Center(
                    child: Column(children: [
                  Expanded(
                      flex: 2,
                      child: Text(
                        achievement.name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: achievementTheme.fontName,
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          letterSpacing: 1.2,
                          color: achievementTheme.darkerText,
                        ),
                      )),
                  Expanded(flex: 4, child: Text(achievement.description)),
                  Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        width: 200, // <-- Your width
                        height: 60,
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

  void _pushLog() {}

  void _checkAndPush() {
    if (result == "完成任務") {
      _pushLog();
    }
  }
}
