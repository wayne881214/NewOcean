import 'package:get/get.dart';

class Question {
  final int id;
  final String title;
  final Map<String, bool> options;

  Question({
    required this.id,
    required this.title,
    required this.options
  });

  @override
  String toString() {
    return 'Question(id: $id, title: $title, options: $options)';
  }

  static List<Question> getquestion(int id) {
    if (id == 1) {
      return [
        Question(
          id: 11,
          title: '塑膠微粒在學術界的定義為直徑小於幾mm的塑膠碎片？',
          options: {'100': false, '10': false, '5': true},
        )
      ];
    } else if (id == 2){
      return [
        Question(
          id: 12,
          title: '海獅題目',
          options: {'100': false, '10': false, '5': true},
        )
      ];
    } else if (id == 3) {
      return [
        Question(
          id: 12,
          title: '鯨魚題目',
          options: {'100': false, '10': false, '5': true},
        )
      ];
    } else {
      return [
        Question(
          id: 12,
          title: '牡蠣題目',
          options: {'100': false, '10': false, '5': true},
        )
      ];
    }
  }
}