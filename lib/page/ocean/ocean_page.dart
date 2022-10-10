import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newocean/model/animal_model/animal_model.dart';
import 'package:newocean/page/ocean/ocean_card.dart';
import 'package:newocean/widget/animal/animal_card_widget.dart';
import 'package:firebase_database/firebase_database.dart';
import 'ar_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
class OceanPage extends StatefulWidget {
@override
_AnimalState createState() => _AnimalState();
}
List<Animal> animal = [];
class _AnimalState extends State<OceanPage> {
  OceanCard card = OceanCard(data:animal);
  @override
  //初始化
  void initState() {
    animal=[];
    //讀取用戶動物，將進行中的任務加入List<Animal>行列
    DatabaseReference Ref = FirebaseDatabase.instance.ref('User/1/animal');
    Ref.onChildAdded.listen((event) {
      int id= (event.snapshot.value as Map)["id"];
      int state= (event.snapshot.value as Map)["state"];
      if(state>=1) {
        animal.add(Animal.addAnimal(id,state));
      }
      if(state==0) {
        animal.add(Animal.addAnimal(0,0));
      }
      //更新 AnimalCard Widget(動物卡片列表)
      setState(() {
        card = OceanCard(data:animal);
      });
    });
  }
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('海洋'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    body: card,
  );
}
