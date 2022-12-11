import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chatdetail.dart';


class PeoplePage extends StatefulWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
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
        //stream: FirebaseFirestore.instance.collection("users").where('uid', isNotEqualTo: currentUser).snapshots(),
        stream: FirebaseFirestore.instance.collection("friends").where('uid', isEqualTo: currentUser).snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {

          if (snapshot.hasError) {
            return Center(child: Text("Something went wrong"),);
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center();
          }

          if (snapshot.hasData) {
            return CustomScrollView(
              slivers: [
                CupertinoSliverNavigationBar(
                  largeTitle: Text('好友列表'),
                ),
                SliverList(
                    delegate: SliverChildListDelegate(
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                          Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
                          return CupertinoListTile(
                              onTap: () => callChatDetailScreen(
                            context, data['friendname'], data['frienduid']),
                            title: Text(data['friendname']),
                          );
                        }).toList()))
              ],
            );
          }
          return Container();
        });
  }
}