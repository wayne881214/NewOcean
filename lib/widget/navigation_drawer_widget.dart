import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:newocean/page/achievements/achievements_page.dart';
import 'package:newocean/page/friends/friends_page.dart';
import 'package:newocean/page/ocean/ocean_page.dart';
import 'package:newocean/page/animals/animals_page.dart';
import 'package:newocean/page/store/storeHomepage.dart';
import 'package:newocean/page/tasks/tasks_page.dart';
import 'package:newocean/page/user/user_page.dart';
import '../page/user/sign_out_page.dart';

class NavigationDrawerWidget extends StatefulWidget {
  @override
  State<NavigationDrawerWidget> createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  final database = FirebaseDatabase.instance.reference();
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  String userName = '';
  String userEmail = '';

  @override
  void initState() {
    super.initState();
    userData();
  }

  void userData() {
    database.child('Users/$currentUser').onValue.listen((event) {
      String name = (event.snapshot.value as Map)["name"];
      String email = (event.snapshot.value as Map)["email"];
      setState(() {
        userName = '$name';
        userEmail = '$email';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final name = userName;
    final email = userEmail;
    final urlImage = 'https://firebasestorage.googleapis.com/v0/b/newocean-444d7.appspot.com/o/image%2027.png?alt=media&token=8edf57e6-c8ba-497b-b9a7-d536b4d306b0';
    return Drawer(
      child: Material(
        color: Color.fromRGBO(176, 226, 217, 1),
        child: ListView(
          children: <Widget>[
            buildHeader(
              urlImage: urlImage,
              name: name,
              email: email,
              onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserPage(
                  name: '使用者',
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  //const SizedBox(height: 5),
                  buildMenuItem(
                    text: '動物',
                    icon: Icons.adb,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: '海洋',
                    icon: Icons.water,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: '任務',
                    icon: Icons.task,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: '成就',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: '好友',
                    icon: Icons.person_add,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: '商店',
                    icon: Icons.output,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: '登出',
                    icon: Icons.settings,
                    onClicked: () => selectedItem(context, 6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(
            children: [
              CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage)),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AnimalsPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => OceanPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TasksPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AchievementsPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FriendsPage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ));
        break;
      case 6:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SignOutPage(),
        ));
        break;
    }
  }
}
