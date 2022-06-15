import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
class Task {

  final String name;
  final String imagePath;
  // ...
  Task(this.name,this.imagePath);
  static List<Task> findAll() {
    /*DatabaseReference ref = FirebaseDatabase.instance.ref();
    ref.onValue.listen(( event) {
      final data = event.snapshot.value;
      updateStarCount(data);
    });*/
    return [
      Task("1", "nothing"),
      Task("2", "nothing'"),
    ];
  }

  static List<Task> findThis() {
    return [
      Task("1", "nothing"),
    ];
  }
}