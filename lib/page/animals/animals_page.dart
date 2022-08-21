import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:newocean/model/animal_model/animal_model.dart';
import 'package:newocean/widget/animal/animal_card_widget.dart';
import '../../constants/colors.dart';
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
        bottomNavigationBar: _buildBottomNaigationBar(),
      );
}

BottomNavigationBar _buildBottomNaigationBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: kBackground,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: [
      BottomNavigationBarItem(
          label: 'issue',
          icon: Container(
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: kAccent, width: 2))),
            child: Text('全部', style: TextStyle(fontWeight: FontWeight.bold),),
          )
      ),
      BottomNavigationBarItem(
          label: 'issue',
          icon: Container(
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: kAccent, width: 2))),
            child: Text('未完成', style: TextStyle(fontWeight: FontWeight.bold),),
          )
      ),
      BottomNavigationBarItem(
          label: 'issue',
          icon: Container(
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: kAccent, width: 2))),
            child: Text('已完成', style: TextStyle(fontWeight: FontWeight.bold),),
          )
      ),
    ],
  );
}



