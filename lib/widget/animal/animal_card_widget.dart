import 'package:flutter/cupertino.dart';
import 'package:newocean/page/animals/screen/animal_animal.dart';
import 'package:flutter/material.dart';
import 'package:newocean/model/animal_model/animal_model.dart';
import 'package:percent_indicator/percent_indicator.dart';
class AnimalCard extends StatelessWidget {
  //獲取List<Animal>任務列表
  AnimalCard({Key? key, required this.data}) : super(key: key);
  final List<Animal> data;

  @override
  Widget build(BuildContext context) {
    //生成List項目
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8
      ),
      children: data.map((value) {
        //偵測點擊跳轉(mission介面)
        return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Animal_animal(id: value.id),
                  ));
            },
            child:Column(
            children: [
            //生成Task Card(任務卡片)
            Card(
              elevation: 0,
              color: Colors.transparent,
              margin: const EdgeInsets.only(top:30,left:5,right:5,bottom:15),
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  width: 5.0,
                  color: Color(0xFF8F8F8F),
                ),
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              child: SizedBox(
                width: 180,
                height:180,
                child: ClipOval(
                    child: Image.asset(value.imagePath, height: 100.00, width: 100.00)),
              ),
            ),
            Text("${value.name}")
            ]));
      }).toList(),
    );
  }
}