import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../states/lib.dart';
import 'chatdetail.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  var currentUser = FirebaseAuth.instance.currentUser!.uid;
  void callChatDetailScreen(BuildContext context, String name, String uid) {
    Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) =>
                ChatDetailPage(friendUid: uid, friendName: name)));
  }
  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (BuildContext context) => CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              largeTitle: Text("Chats"),
            ),
            SliverList(
                delegate: SliverChildListDelegate(
                    chatState.messages.values.toList().map((data) {
                      return Observer(
                        builder: (_) => CupertinoListTile(
                          title: Text(data['chats']),
                        ));
                          /*leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                                usersState.users[data['friendUid']]['picture'] !=
                                    null
                                    ? usersState.users[data['friendUid']]['picture']
                                    : ''),
                          ),
                          onTap: () => callChatDetailScreen(
                              context,
                              usersState.users[data['friendUid']]['name'] != null
                                  ? usersState.users[data['friendUid']]['name']
                                  : '',
                              data['uid']),
                          title: Text(
                              usersState.users[data['friendUid']]['name'] != null
                                  ? usersState.users[data['friendUid']]['name']
                                  : ''),
                          subtitle: Text(
                              usersState.users[data['friendUid']]['status'] != null
                                  ? usersState.users[data['friendUid']]['status']
                                  : ''),
                        ),
                      );*/
                    }).toList()))
          ],
        ));
  }
}