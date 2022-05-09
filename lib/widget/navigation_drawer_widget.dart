import 'package:flutter/material.dart';
import 'package:untitled/page/achievements_page.dart';
import 'package:untitled/page/friends_page.dart';
import 'package:untitled/page/ocean_page.dart';
import 'package:untitled/page/animals_page.dart';
import 'package:untitled/page/settings_page.dart';
import 'package:untitled/page/tasks_page.dart';
import 'package:untitled/page/user_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    final name = 'TING-HSUAN PEI';
    final email = 'abcdefg@gmail.com';
    final urlImage =
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';

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
                  name: 'TING-HSUAN-PEI',
                  urlImage: urlImage,
                ),
              )),
            ),
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Animals',
                    icon: Icons.adb,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Ocean',
                    icon: Icons.water,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'tasks',
                    icon: Icons.ads_click,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Achievements',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Friends',
                    icon: Icons.person_add,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'Settings',
                    icon: Icons.settings,
                    onClicked: () => selectedItem(context, 5),
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
          builder: (context) => SettingsPage(),
        ));
        break;
    }
  }
}
