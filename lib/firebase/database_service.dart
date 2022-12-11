import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

void changeTask(int id ,int state){
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  Map<String, Object> Task = {
    "id": id,
    "state": state+1
  };
  DatabaseReference Ref = FirebaseDatabase.instance.ref('Tasks/'+currentUser+'/task'+id.toString());
  Ref.set(Task).whenComplete(() {
  }).catchError((error) {
    print(error);
  });

  DatabaseReference animalsRef = FirebaseDatabase.instance.ref('Animals/'+currentUser+'/animal'+id.toString());
  animalsRef.set(Task).whenComplete(() {
  }).catchError((error) {
    print(error);
  });
}
//

void changeTask2(int id ,int state,double stateApi) {
  print("changeTask2 stateApi: $stateApi");
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  Map<String, Object> Task = {
    "id": id,
    "state": state + 1
  };
  if (stateApi >= 4) {
    DatabaseReference Ref = FirebaseDatabase.instance.ref(
        'Tasks/'+currentUser+'/task'+id.toString());
    Ref.set(Task).whenComplete(() {}).catchError((error) {
      print(error);
    });

    DatabaseReference animalsRef = FirebaseDatabase.instance.ref('Animals/'+currentUser+'/animal'+id.toString());
    animalsRef.set(Task).whenComplete(() {
    }).catchError((error) {
      print(error);
    });
  }
}


void changeTask3(int id ,int state,double stateApi){
  print("changeTask3 stateApi: $stateApi");
  final currentUser = FirebaseAuth.instance.currentUser!.uid.toString();
  Map<String, Object> Task = {
    "id": id,
    "state": state+1
  };
  if(stateApi>=11) {
    DatabaseReference Ref = FirebaseDatabase.instance.ref(
        'Tasks/'+currentUser+'/task'+id.toString());
    Ref.set(Task).whenComplete(() {}).catchError((error) {
      print(error);
    });

    DatabaseReference animalsRef = FirebaseDatabase.instance.ref('Animals/'+currentUser+'/animal'+id.toString());
    animalsRef.set(Task).whenComplete(() {
    }).catchError((error) {
      print(error);
    });
  }
}