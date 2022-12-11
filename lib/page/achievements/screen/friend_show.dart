
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../model/user_model/user_model.dart';
import '../../friends/screen/chatdetail.dart';
import 'my_diary_screen.dart';

List jsonResponse = [];

class PeopleShow extends StatefulWidget {
  const PeopleShow({Key? key}) : super(key: key);

  @override
  State<PeopleShow> createState() => _PeopleShowState();
}

class _PeopleShowState extends State<PeopleShow> with TickerProviderStateMixin {
  var currentUser = FirebaseAuth.instance.currentUser!.uid;

  void initState() {
    final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
    DatabaseReference Ref = FirebaseDatabase.instance.ref('Users/');
    jsonResponse = [];
    Ref.onChildAdded.listen((event) async {
      Map userLogValue = (event.snapshot.value as Map);
      this.setState(
          () => jsonResponse.add(new Map<String, dynamic>.from(userLogValue)));
    });

    super.initState();
  }

  void callChatDetailScreen(BuildContext context, String name, String uid) {
    Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) => ChatDetailPage(
                  friendName: name,
                  friendUid: uid,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UserData>>(
      future: _fetchLogs(),
      builder: (context, snapshot) {
        List<UserData>? data = snapshot.data;
        if (snapshot.hasData) {
          List<UserData>? data = snapshot.data;
          return _logsListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  Future<List<UserData>> _fetchLogs() async {
    return jsonResponse
        .map((userData) => new UserData.fromJson(userData))
        .toList();
  }

  ListView _logsListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _tile(data[index], Icons.work);
        });
  }

  @override
  Card _tile(UserData userData, IconData icon) {
    String title = userData.name.toString();
    String subtitle = userData.uid.toString();
    if (title == '') {
      title = '無名稱';
    }
    Icon icon = Icon(
      Icons.remember_me_sharp,
      color: Colors.teal,
      size: 90.0,
    );
    late DateTime today = DateTime.now();
    AnimationController? animationController;
    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    return Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 4.0,
            color: Colors.teal,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              ListTile(
                minVerticalPadding: 30,
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MyDiaryScreen(
                      animationController: animationController,
                      currentUser: subtitle,
                      today: today),
                )),
                title: Text(title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    )),
                subtitle: Text("$subtitle \n"),
                leading: icon,
              )
            ])));
  }
}

// return CupertinoListTile(
// onTap: () => Navigator.of(context).push(MaterialPageRoute(
// builder: (context) => MyDiaryScreen(
// animationController: animationController,
// currentUser: data['uid'],
// today: today),
// )),
// title: Text(data['name']),
