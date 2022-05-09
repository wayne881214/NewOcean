import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
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
                  10,
                  (index) {
                    print("without builder index = $index");
                    return Container(
                      height: 60,
                      child: Card(
                        color: Color.fromARGB(255, 0, 173, 173),
                        child: Center(child: Text("$index")),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // return Center(
    //   child: Text("聊天室頁"),

    // )
    ;
  }
}
