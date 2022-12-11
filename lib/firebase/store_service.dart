import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../model/store_model/cart_model.dart';


void setMoney(int money) {
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  DatabaseReference Ref =
      FirebaseDatabase.instance.ref('Money/' + currentUser + '/');
  late final Map<String, Object> api = {"money": money};
  Ref.set(api).whenComplete(() {}).catchError((error) {
    print(error);
  });
  show("資料已送出");
}

int op = 0;

void addMoney(int money) {
  int getMoney = 0;
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  DatabaseReference Ref =
      FirebaseDatabase.instance.ref('Money/' + currentUser + '/');
  Ref.onChildAdded.listen((event) async {
    getMoney = (event.snapshot.value as int);
    setMoney(money + getMoney);
    op = 1;
  });
  if(op==0){
    setMoney(money+getMoney);
  }
}
int getMoney() {
  int getMoney = -1;
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  DatabaseReference Ref =
  FirebaseDatabase.instance.ref('Money/' + currentUser + '/');
  Ref.onChildAdded.listen((event) async {
    getMoney = (event.snapshot.value as int);
  });
   return getMoney;
}
void addCartModels(CartModel Data) {
  String name = Data.name;
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  DatabaseReference Ref =
      FirebaseDatabase.instance.ref('Bag/' + currentUser + '/' + name);
  Ref.set(Data.api).whenComplete(() {
    show("$name 購買成功");
  }).catchError((error) {
    print(error);
  });
}

void show(msg) {
  Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: Color(0xffB3E7E7),
      textColor: Colors.black,
      fontSize: 16.0);
}
var jsonResponse2=[];
int op2=0;
List<CartModel> getAllCartModel() {
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  DatabaseReference Ref = FirebaseDatabase.instance.ref('Bag/' + currentUser);
  if (op2 == 0) {
    Ref.onChildAdded.listen((event) async {
      op2 = 1;
      Map userCartModelValue = (event.snapshot.value as Map);
      jsonResponse2.add(new Map<String, dynamic>.from(userCartModelValue));
    });
  }
  return jsonResponse2.map((log) => new CartModel.fromJson(log)).toList();
}
void update(){
  jsonResponse2=[];
  op2=0;
}