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


void changeTask2(int id ,int state,double stateApi) {
  Map<String, Object> Task = {
    "id": id,
    "state": state + 1
  };
  if (stateApi >= 4) {
    DatabaseReference Ref = FirebaseDatabase.instance.ref(
        'User/' + Username + '/task/task' + id.toString());
    Ref.set(Task).whenComplete(() {}).catchError((error) {
      print(error);
    });
  }
}


void changeTask3(int id ,int state,double stateApi){
  Map<String, Object> Task = {
    "id": id,
    "state": state+1
  };
  if(stateApi>=11) {
    DatabaseReference Ref = FirebaseDatabase.instance.ref(
        'User/' + Username + '/task/task' + id.toString());
    Ref.set(Task).whenComplete(() {}).catchError((error) {
      print(error);
    });
  }
}