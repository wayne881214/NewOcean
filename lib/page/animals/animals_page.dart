import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:newocean/model/animal_model/animal_model.dart';
import 'package:newocean/widget/animal/animal_card_widget.dart';
import 'package:flutter/services.dart';

class AnimalsPage extends StatefulWidget {
  @override
  _AnimalState createState() => _AnimalState();
}

//建立 Animal(Model) List (任務卡片模型列表)
//model/animal_model.dart
List<Animal> animal = [];

class _AnimalState extends State<AnimalsPage> {
  //生成 AnimalCard Widget (任務卡片列表)
  //widget/animal_card_widget.dart
  AnimalCard card = AnimalCard(data:animal);
  @override
  //初始化
  void initState() {
    animal=[];
    final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
    //讀取用戶動物，將進行中的任務加入List<Animal>行列
    DatabaseReference Ref = FirebaseDatabase.instance.ref('Animals/$currentUser');
    Ref.onChildAdded.listen((event) {
      int id= (event.snapshot.value as Map)["id"];
      int state= (event.snapshot.value as Map)["state"];
      if(state >= 1) {
        animal.add(Animal.addAnimal(id,state));
      }
      if(state == 0) {
        animal.add(Animal.addAnimal(0,0));
      }
      //更新 AnimalCard Widget(動物卡片列表)
      setState(() {
        card = AnimalCard(data:animal);
      });
    });
  }
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text('動物'),
          centerTitle: true,
          backgroundColor: Color(0xFF00BFA5),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: card,
      );
}


