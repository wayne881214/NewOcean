import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/task_turtle_package/constants/colors.dart';
import 'package:newocean/task_turtle_package/models/course.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  CustomAppBar(this.course);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40)
                ),
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
                  child: Image.asset(course.imageUrl,
                  fit: BoxFit.fitHeight),
                ),
              ),
              Container(
                height: 20,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: Container(
              height: 50,
              width: 110,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
                onPressed: () {},
                child: Text('Start class'),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            child: Container(
              height: 50,
              width: 50,
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios,
                color: Colors.white,),
                iconSize: 20,
                onPressed: () =>
                  Navigator.of(context).pop()
              ),
            )),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            right: 25,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: IconButton(
                  icon: Icon(Icons.bookmark,
                    color: Colors.white,),
                  iconSize: 20,
                  onPressed: () {}),
            ),
          )
        ],
      ),
    );
  }
}