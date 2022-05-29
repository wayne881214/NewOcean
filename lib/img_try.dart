
import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SwiperPic(title: 'Flutter Demo Home Page'),
    );
  }
}

class SwiperPic extends StatefulWidget {
  SwiperPic({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SwiperPicState createState() => new _SwiperPicState();
}

class _SwiperPicState extends State<SwiperPic> {
  List<Map> imageList = [
    {
      "url":
          "https://i.imgur.com/MSXHnZd.png"
    },
    {
      "url":
          "https://i.imgur.com/WWm9guV.png"
    },
    {
      "url":
          "https://i.imgur.com/yEl9QRC.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   title: new Text(widget.title),
      // ),
    body:  new Swiper(
        itemBuilder: (BuildContext context,int index){
          return new Image.network(imageList[index]["url"],fit: BoxFit.fill,);
        },
        itemCount: 3,
        viewportFraction: 0.8,
        scale: 0.9,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
