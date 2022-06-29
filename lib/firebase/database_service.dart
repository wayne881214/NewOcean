import 'package:firebase_database/firebase_database.dart';
import 'package:newocean/firebase/User.dart';
void changeTask(int id ,int state){
  Map<String, Object> Task = {
    "id": id,
    "state": state+1
  };
  DatabaseReference Ref = FirebaseDatabase.instance.ref('User/'+Username+'/task/task'+id.toString());
  Ref.set(Task).whenComplete(() {
  }).catchError((error) {
    print(error);
  });
}