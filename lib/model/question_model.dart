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
        ),
        Question(
          id: 11,
          title: '有環保觀念的消費者購物時應盡量？',
          options: {'購買包裝精美之商品': false, '選擇一次性包裝材料之商品': false, '拒絕購買包裝袋而自備購物袋': true},
        ),
        Question(
          id: 11,
          title: '所謂的「一多三少」是指？',
          options: {'產品份量少、包裝材料多、\n種類少、印刷少': false, '產品份量多、包裝材料少、\n種類少、印刷多': false, '產品份量多、包裝材料少、\n種類少、印刷少': true},
        ),
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