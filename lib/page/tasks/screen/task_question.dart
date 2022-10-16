import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:newocean/constants/colors.dart';
import 'package:newocean/page/tasks/screen/task_issue.dart';
import 'package:newocean/page/tasks/screen/task_task.dart';
import 'package:newocean/widget/task/task_issue/next_button.dart';
import 'package:newocean/widget/task/task_issue/option_card.dart';
import 'package:newocean/widget/task/task_issue/question_widget.dart';
import 'package:newocean/widget/task/task_issue/result_box.dart';

import '../../../model/task_model/question_model.dart';

class Task_question extends StatefulWidget {
  const Task_question({Key? key, required this .id}) : super(key: key);
  final int id;

  @override
  _Task_questionState createState() => _Task_questionState();
}

class _Task_questionState extends State<Task_question> {

  List<Question> _questions = [];
  @override
  void initState() {
    _questions = Question.getquestion(widget.id);
    super.initState();
  }

  /*List<Question> _questions = [
    Question(
        id: '10',
        title: '塑膠微粒在學術界的定義為直徑小於幾mm的塑膠碎片？',
        options: {'100': false, '10': false, '5': true},
    )
  ];*/

  int index = 0;
  bool isPressed = false;
  bool isAlreadySelected = false;
  int score = 0;

  void nextQuestion(){
    if (index == _questions.length - 1) {
      showDialog(
          context: context,
          barrierDismissible: false, //點擊外部消失
          builder: (ctx) => ResultBox(
            result: score,
            questionLength: _questions.length,
            onPressed: startOver,));
    } else {
      if(isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
         content: Text('請選擇'),
         behavior: SnackBarBehavior.floating,
         margin: EdgeInsets.symmetric(vertical: 20.0),
       ));
      }
    }
  }

  void checkAnswerAndUpdate(bool value){
    if(isAlreadySelected) {
      return;
    } else {
      if (value == true) {
        score++;
      }
      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  void startOver() {
    setState(() {
      index = 0;
      score = 0;
      isPressed = false;
      isAlreadySelected = false;
    });
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('知識問答'),
        backgroundColor: Color(0xFF00BFA5),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('得分: $score',
            style: const TextStyle(fontSize: 18.0),),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            QuestionWidget(
                indexAction: index,
                question: _questions[index].title,
                totalQuestions: _questions.length),
            const Divider(color: neutral),
            const SizedBox(height: 25),
            for (int i = 0; i < _questions[index].options.length; i++)
              GestureDetector(
                onTap: () => checkAnswerAndUpdate(_questions[index].options.values.toList()[i]),
                child: OptionCard(
                  option: _questions[index].options.keys.toList()[i],
                  color: isPressed
                      ? _questions[index].options.values.toList()[i] == true
                        ? correct
                        : incorrect
                      : neutral,
                ),
              ),

          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNaigationBar(),


      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: NextButton(nextQuestion: nextQuestion
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

  }

  void _onItemTapped(int index) {
    if(index==0) {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Task_issue(id: widget.id)));
    }
    if(index==1) {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Task_task(id: widget.id,)));
    }
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
              child: Text('議題', style: TextStyle(fontWeight: FontWeight.bold),),
            )
        ),
        BottomNavigationBarItem(
            label: 'issue',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border:
                  Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text('任務', style: TextStyle(fontWeight: FontWeight.bold),),
            )
        ),
        BottomNavigationBarItem(
            label: 'issue',
            icon: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  border:
                  Border(bottom: BorderSide(color: kAccent, width: 2))),
              child: Text('問答', style: TextStyle(fontWeight: FontWeight.bold),),
            )
        ),
      ],
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }

}