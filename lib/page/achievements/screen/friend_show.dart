import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../friends/screen/chatdetail.dart';
import 'my_diary_screen.dart';

class PeopleShow extends StatefulWidget {
  const PeopleShow({Key? key}) : super(key: key);

  @override
  State<PeopleShow> createState() => _PeopleShowState();
}

class _PeopleShowState extends State<PeopleShow> with TickerProviderStateMixin {
  var currentUser = FirebaseAuth.instance.currentUser!.uid;

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
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection("users")
            .where('uid', isNotEqualTo: currentUser)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Something went wrong"),
            );
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text("Loading"),
            );
          }
          if (snapshot.hasData) {
            return CustomScrollView(
              slivers: [
                CupertinoSliverNavigationBar(
                  largeTitle: Text('People'),
                ),
                SliverList(
                    delegate: SliverChildListDelegate(
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  AnimationController animationController = AnimationController(
                      duration: const Duration(milliseconds: 600), vsync: this);
                  late DateTime today = DateTime.now();
                  return CupertinoListTile(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyDiaryScreen(
                          animationController: animationController,
                          currentUser: data['uid'],
                          today: today),
                    )),
                    title: Text(data['name']),
                  );
                }).toList()))
              ],
            );
          }
          return Container();
        });
  }
}
