import 'package:flutter/material.dart';
import 'package:newocean/model/task_model.dart';
class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('任務'),
      centerTitle: true,
      backgroundColor: Color(0xFF00BFA5),
    ),
    body:
        getcard(),
  );
}

class getcard extends StatelessWidget {
  final task = Task.findAll();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: task.map((value) {
        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xFF00BFA5),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child:  SizedBox(
            width: 300,
            height: 100,
            child: Center(child:Text(value.imagePath)),
          ),
        );
      }).toList(),
    );
  }
}
