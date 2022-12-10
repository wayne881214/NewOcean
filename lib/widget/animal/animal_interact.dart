import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:newocean/page/ocean/ar_widget.dart';

class Animal_interact extends StatefulWidget {
  Animal_interact({Key? key, required this.id, required this.state}) : super(key: key);
  final int id;
  final int state;
  @override
  _interactState createState() => _interactState();
}

class  _interactState extends State<Animal_interact> {

  @override
  String animalToolImg1 = "assets/images/animals/lock.png";
  String animalToolImg2 = "assets/images/animals/lock.png";
  String animalToolImg3 = "assets/images/animals/lock.png";

  void initState() {
    print("======================================"+ widget.state.toString());
    setState(() {
      if(widget.state >= 2){
        animalToolImg1 = "assets/images/animals/aricon.png";
      }
      if(widget.state >= 3){
        animalToolImg2 = "assets/images/animals/aricon.png";
      }
      if(widget.state >= 4){
        animalToolImg3 = "assets/images/animals/aricon.png";
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Row(
        children:[
          GestureDetector(
          onTap: () {
            if( widget.state >= 2 ) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ObjectsOnPlanesWidget(id: widget.id),
                  ));
            }
            },
              //生成Task Card(任務卡片)
            child: Card(
                elevation: 0,
                color: Colors.white,
                margin: const EdgeInsets.only(top:25,left:10,right:10,bottom:5),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    width: 5.0,
                    color: Color(0xFF8F8F8F),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(180)),
                ),
                child: SizedBox(
                  width: 100,
                  height:100,
                  child: ClipOval(
                      child: Image.asset(animalToolImg1, height: 100.00, width: 100.00)),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if(widget.state >= 3) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ObjectsOnPlanesWidget(id: widget.id),
                      ));
                }
              },
              //生成Task Card(任務卡片)
              child: Card(
                elevation: 0,
                color: Colors.white,
                margin: const EdgeInsets.only(top:25,left:10,right:10,bottom:5),
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    width: 5.0,
                    color: Color(0xFF8F8F8F),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(180)),
                ),
                child: SizedBox(
                  width: 100,
                  height:100,
                  child: ClipOval(
                      child: Image.asset(animalToolImg2, height: 100.00, width: 100.00)),
                ),
              ),
            ),
          GestureDetector(
            onTap: () {
              if(widget.state >= 4) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ObjectsOnPlanesWidget(id: widget.id),
                    ));
              }
            },
            //生成Task Card(任務卡片)
            child: Card(
              elevation: 0,
              color: Colors.white,
              margin: const EdgeInsets.only(top:25,left:10,right:10,bottom:5),
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  width: 5.0,
                  color: Color(0xFF8F8F8F),
                ),
                borderRadius: BorderRadius.all(Radius.circular(180)),
              ),
              child: SizedBox(
                width: 100,
                height:100,
                child: ClipOval(
                    child: Image.asset(animalToolImg3, height: 100.00, width: 100.00)),
              ),
            ),
          ),
        ]
      )
    );
  }
}