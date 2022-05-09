import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  final p = [
    ["我好愛小動物喔", "蒐集10種海洋生物"],
    ["大藝術家", "蒐集30種動物裝扮"],
    ["用愛發電", "完成25次省電類任務"],
    ["當台灣人塑膠做的", "連續21天完成環保袋任務"]
  ];
  final b = ["t1", "t2", "t3", "t4", "t5"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: ListView(
                  children: List.generate(
                4,
                (index) {
                  print("without builder index = $index");
                  print("without builder index = ${p[index][0]}");
                  return Container(
                    height: 180,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 173, 173),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      border: Border.all(
                        color: Color.fromARGB(40, 0, 255, 51),
                        width: 3,
                      ),
                      image: DecorationImage(
                        scale: 0.5,
                        alignment: Alignment.centerLeft,
                        image: AssetImage("assets/images/p1.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                    child: Card(
                      color: Color.fromARGB(40, 0, 255, 51),
                      child: Center(
                        child: Text("${p[index][0]}\n${p[index][1]}"),
                      ),
                    ),
                  );
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
