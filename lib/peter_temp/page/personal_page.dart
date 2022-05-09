import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: YanweiLiu(),
    ));

class YanweiLiu extends StatefulWidget {
  // const YanweiLiu({Key? key}) : super(key: key);

  @override
  _YanweiLiu createState() => _YanweiLiu();
}

class _YanweiLiu extends State<YanweiLiu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(
      //   title: Text('個人簡介'),
      //   centerTitle: true,
      //   backgroundColor: Colors.blue[850],
      //   elevation: 0.0,
      // ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage:
                    NetworkImage('https://i.imgur.com/aitAmXj.png'),
              ),
            ),
            Divider(
                color: Color.fromARGB(255, 0, 173, 173),
              height: 40.0,
            ),
            Text(
              '蔡英文',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '環保小尖兵',
              style: TextStyle(
                color: Color.fromARGB(255, 88, 88, 88),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonBar(
                  buttonMinWidth:150,
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      child: Text("評分"),
                      color: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 113, 113, 113),
                          width: 3,
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text("加好友"),
                      color: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 113, 113, 113),
                          width: 3,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonBar(
                  buttonMinWidth:150,
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      child: Text("儀錶板"),
                      color: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 113, 113, 113),
                          width: 3,
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {},
                      child: Text("紀錄"),
                      color: Colors.white,
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Color.fromARGB(255, 113, 113, 113),
                          width: 3,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            // SizedBox(
            //   width: double.infinity,
            //   height: 50,
            //   child: RaisedButton(
            //     onPressed: () {},
            //     child: Text("寬度"),
            //     color: Colors.white,
            //     shape: StadiumBorder(
            //       side: BorderSide(
            //         color: Color.fromARGB(255, 113, 113, 113),
            //         width: 3,
            //       ),
            //     ),
            //   ),
            // ),
            Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Color.fromARGB(255, 0, 173, 173),
              ),
              SizedBox(width: 10.0),
              Text(
                '多樣性等級:',
                style: TextStyle(
                  color: Color.fromARGB(255, 88, 88, 88),
                  letterSpacing: 2.0,
                  fontSize: 20,
                ),
              ),
              Text(
                '10',
                style: TextStyle(
                  color: Color.fromARGB(255, 88, 88, 88),
                  letterSpacing: 2.0,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
            ]),
              Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Color.fromARGB(255, 0, 173, 173),
              ),
              SizedBox(width: 10.0),
              Text(
                '減碳量:',
                style: TextStyle(
                  color: Color.fromARGB(255, 88, 88, 88),
                  letterSpacing: 2.0,
                  fontSize: 20,
                ),
              ),
              Text(
                '1.822kg',
                style: TextStyle(
                  color: Color.fromARGB(255, 88, 88, 88),
                  letterSpacing: 2.0,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
            ]),
              Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Color.fromARGB(255, 0, 173, 173),
              ),
              SizedBox(width: 10.0),
              Text(
                '獲得星數:',
                style: TextStyle(
                  color: Color.fromARGB(255, 88, 88, 88),
                  letterSpacing: 2.0,
                  fontSize: 20,
                ),
              ),
              Text(
                '390',
                style: TextStyle(
                  color: Color.fromARGB(255, 88, 88, 88),
                  letterSpacing: 2.0,
                  fontSize: 20,
                ),
                textAlign: TextAlign.right,
              ),
            ]),
            SizedBox(height: 30),

            Row(children: <Widget>[
              Text(
                '關於我',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              ),
            ]),
            Row(children: <Widget>[
              Text(
                '用愛發電，你們要自立自強啊',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              ),
            ]),
            SizedBox(height: 30),

            Row(children: <Widget>[
              Text(
                '聯絡方式',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                ),
              ),
            ]),

            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'contact@blainecottrell.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            // Text(
            //   '地點',
            //   style: TextStyle(
            //     color: Colors.grey[300],
            //     letterSpacing: 2.0,
            //   ),
            // ),
            // SizedBox(height: 10.0),
            // Text(
            //   '高雄',
            //   style: TextStyle(
            //     color: Colors.amberAccent[200],
            //     fontWeight: FontWeight.bold,
            //     fontSize: 16.0,
            //     letterSpacing: 2.0,
            //   ),
            // ),
            // SizedBox(height: 10.0),
            // Text(
            //   '研究領域',
            //   style: TextStyle(
            //     color: Colors.grey[300],
            //     letterSpacing: 2.0,
            //   ),
            // ),
            // SizedBox(height: 10.0),
            // Text(
            //   'ML&DL / Front End/ Web Scraping',
            //   style: TextStyle(
            //     color: Colors.amberAccent[200],
            //     fontWeight: FontWeight.bold,
            //     fontSize: 16.0,
            //     letterSpacing: 2.0,
            //   ),
            // ),
            // SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
