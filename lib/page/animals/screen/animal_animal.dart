import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newocean/model/animal_model/animal_model.dart';
import 'package:newocean/widget/animal/aniaml_describe.dart';
import 'package:newocean/widget/animal/animal_interact.dart';
import 'package:flutter/cupertino.dart';
import 'package:newocean/widget/animal/animal_headshot.dart';

class Animal_animal extends StatefulWidget {
  Animal_animal({Key? key, required this.id,required this.state}) : super(key: key);
  final int id;
  final int state;
  @override
  _AnimalState createState() => _AnimalState();
}

class  _AnimalState extends State<Animal_animal> {
  int number=0;
  int state = 0;
  Animal animal=Animal.addAnimal(0,1);
  @override
  void initState() {

    animal=Animal.addAnimal((widget.id),(widget.state));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFB0E2D9),
      appBar: AppBar(
        title: Text(animal.name),
        centerTitle: true,
        backgroundColor: Color(0xFF00BFA5),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Animal_headshot(img:animal.imagePath),
            Animal_describe(site:animal.site,food:animal.food,describe:animal.describe),
            Animal_interact(id:widget.id,state:animal.state),
          ],
        ),
      ),
    );
  }
}