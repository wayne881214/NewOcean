import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../model/map_model/map_model.dart';
import 'log_service.dart';

void addMap(MapData Data) {
  String name=Data.latitude.toString() + ":" + Data.longitude.toString();
  name = name.replaceAll(".", "_");
  DatabaseReference Ref = FirebaseDatabase.instance
      .ref('Map/' + name);
  show(Data.type + "資料已送出");
  Ref.set(Data.api).whenComplete(() {}).catchError((error) {
    print(error);
  });
}
