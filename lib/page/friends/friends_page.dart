import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newocean/page/friends/screen/chats.dart';
import 'package:newocean/page/friends/screen/people.dart';

class FriendsPage extends StatefulWidget {
  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {

  var screens = [ChatsPage(), PeoplePage(), AddFriendsPage()];

  @override
  void initState() {
    chatState.refreshChatsForCurrentUser();
    //usersState.initUsersListener();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      /*return Scaffold(
        appBar: AppBar(
          title: Text('好友'),
          centerTitle: true,
          backgroundColor: Color(0xFF00BFA5),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: Column(),
      );*/
      return CupertinoPageScaffold(
          child: CupertinoTabScaffold(
            resizeToAvoidBottomInset: true,
            tabBar: CupertinoTabBar(
              items: [
                BottomNavigationBarItem(
                  label: "Chats",
                  icon: Icon(CupertinoIcons.chat_bubble_2_fill),
                ),
                BottomNavigationBarItem(
                  label: "People",
                  icon: Icon(CupertinoIcons.person_alt_circle),
                ),
                BottomNavigationBarItem(
                  label: "AddFriends",
                  icon: Icon(CupertinoIcons.person_3_fill),
                ),
              ],
            ), tabBuilder: (BuildContext context, int index) {
              return screens[index];
              },
          ),
      );
    }
}
