import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newocean/page/sign_in_up/authentication_service.dart';
import 'package:provider/provider.dart';
import '../widget/navigation_drawer_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('首頁', style: TextStyle(color: Colors.teal)),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      leading: Builder(builder: (context) {
        return IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: ImageIcon(
                new AssetImage('assets/icons/hamburger.png'),
                color: Colors.teal
            ),
          );
        },
      ),
      actions: [
        Image.asset('assets/icons/diamond_icon.png',width: 30),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.plus_one),
            color: Colors.teal,
        )
      ],
    ),
    body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/turtle.png'),
            RaisedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: Text("登出"),
            ),
          ],
        ),
      ),
  );
}

