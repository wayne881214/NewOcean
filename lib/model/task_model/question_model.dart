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
          title: '廢棄物管理措施，以下何者錯誤?',
          options: {'少用塑膠製品': false, '儘量自帶可清洗再用的飯盒': false, '資源回收與垃圾減量無關': true},
        ),
        Question(
          id: 12,
          title: '垃圾問題最理想的解決辦法是?',
          options: {'掩埋方式': false, '焚化爐焚燒方式': false, '垃圾源頭減量方式': true},
        ),
        Question(
          id: 12,
          title: '垃圾減量 3 原則，分別為源頭減量(Reduce)、再使用(Reuse)以及 物料回收(Recycle)，主要在於推動?',
          options: {'維修': false, '拒用': false, '回收再生使用': true},
        )
      ];
    } else if (id == 3) {
      return [
        Question(
          id: 12,
          title: '由於鯨魚視力極度退化，因此他們一般使用回聲測量距離，也透過聲波彼此溝通，請問鯨魚發出的聲音，一般介於何者?',
          options: {'15-25 Hz': true, '25-50 Hz': false, '100-120 Hz': false},
        ),
        Question(
          id: 12,
          title: '在海上運行的船舶，除了帶給人們物資外，卻也為海洋動物帶來噪音，請問在海洋中，船舶的噪音程度等同現實生活中的哪項噪音?',
          options: {'飛機起降聲': false, '工地擴建': true, '吵架聲': false},
        ),
        Question(
          id: 12,
          title: '鯨魚會因為噪音而干擾回聲定位，因而擱淺在岸上，若時間久了，甚至會發生鯨魚爆炸事件(通稱為鯨爆)，請問鯨爆的發生原因為何?',
          options: {'受高溫影響，鯨魚內部的瓦斯氣體被點燃爆炸': false, '內部蓄積過多腐敗氣體而造成身軀爆裂': true, '指將炸藥塞入鯨魚體內引爆，以方便分解流程': false},
        )
      ];
    }else if (id == 4) {
      return [
        Question(
          id: 12,
          title: '由於鯨魚視力極度退化，因此他們一般使用回聲測量距離，也透過聲波彼此溝通，請問鯨魚發出的聲音，一般介於何者?',
          options: {'15-25 Hz': true, '25-50 Hz': false, '100-120 Hz': false},
        ),
        Question(
          id: 12,
          title: '在海上運行的船舶，除了帶給人們物資外，卻也為海洋動物帶來噪音，請問在海洋中，船舶的噪音程度等同現實生活中的哪項噪音?',
          options: {'飛機起降聲': false, '工地擴建': true, '吵架聲': false},
        ),
        Question(
          id: 12,
          title: '鯨魚會因為噪音而干擾回聲定位，因而擱淺在岸上，若時間久了，甚至會發生鯨魚爆炸事件(通稱為鯨爆)，請問鯨爆的發生原因為何?',
          options: {'受高溫影響，鯨魚內部的瓦斯氣體被點燃爆炸': false, '內部蓄積過多腐敗氣體而造成身軀爆裂': true, '指將炸藥塞入鯨魚體內引爆，以方便分解流程': false},
        )
      ];
    }else if (id == 5) {
      return [
        Question(
          id: 12,
          title: '由於鯨魚視力極度退化，因此他們一般使用回聲測量距離，也透過聲波彼此溝通，請問鯨魚發出的聲音，一般介於何者?',
          options: {'15-25 Hz': true, '25-50 Hz': false, '100-120 Hz': false},
        ),
        Question(
          id: 12,
          title: '在海上運行的船舶，除了帶給人們物資外，卻也為海洋動物帶來噪音，請問在海洋中，船舶的噪音程度等同現實生活中的哪項噪音?',
          options: {'飛機起降聲': false, '工地擴建': true, '吵架聲': false},
        ),
        Question(
          id: 12,
          title: '鯨魚會因為噪音而干擾回聲定位，因而擱淺在岸上，若時間久了，甚至會發生鯨魚爆炸事件(通稱為鯨爆)，請問鯨爆的發生原因為何?',
          options: {'受高溫影響，鯨魚內部的瓦斯氣體被點燃爆炸': false, '內部蓄積過多腐敗氣體而造成身軀爆裂': true, '指將炸藥塞入鯨魚體內引爆，以方便分解流程': false},
        )
      ];
    }else if (id == 6) {
      return [
        Question(
          id: 12,
          title: '塑膠分類標誌（Resin identification code）是美國塑膠工業協會所發展出來的分類編碼方式，請問塑膠分為幾類?',
          options: {'7類': true, '5類': false, '6類': false},
        ),
        Question(
          id: 12,
          title: '市民有保麗龍及塑膠緩衝材應如何處理？',
          options: {'隨意棄置': false, '交給清潔隊資源回收車回收': true, '置於專用垃圾袋中棄置': false},
        ),
        Question(
          id: 12,
          title: '民眾有裝填成藥之容器或醫師藥劑師指示藥品之容器（僅限於藥廠售出時使用者）可以如何處理？',
          options: {'已失去價值可棄置': false, '交清潔隊回收': true, '置於不燃性垃圾中': false},
        )
      ];
    }else if (id == 7) {
      return [
        Question(
          id: 12,
          title: '由於鯨魚視力極度退化，因此他們一般使用回聲測量距離，也透過聲波彼此溝通，請問鯨魚發出的聲音，一般介於何者?',
          options: {'15-25 Hz': true, '25-50 Hz': false, '100-120 Hz': false},
        ),
        Question(
          id: 12,
          title: '在海上運行的船舶，除了帶給人們物資外，卻也為海洋動物帶來噪音，請問在海洋中，船舶的噪音程度等同現實生活中的哪項噪音?',
          options: {'飛機起降聲': false, '工地擴建': true, '吵架聲': false},
        ),
        Question(
          id: 12,
          title: '鯨魚會因為噪音而干擾回聲定位，因而擱淺在岸上，若時間久了，甚至會發生鯨魚爆炸事件(通稱為鯨爆)，請問鯨爆的發生原因為何?',
          options: {'受高溫影響，鯨魚內部的瓦斯氣體被點燃爆炸': false, '內部蓄積過多腐敗氣體而造成身軀爆裂': true, '指將炸藥塞入鯨魚體內引爆，以方便分解流程': false},
        )
      ];
    }else if (id == 8) {
      return [
        Question(
          id: 12,
          title: '由於鯨魚視力極度退化，因此他們一般使用回聲測量距離，也透過聲波彼此溝通，請問鯨魚發出的聲音，一般介於何者?',
          options: {'15-25 Hz': true, '25-50 Hz': false, '100-120 Hz': false},
        ),
        Question(
          id: 12,
          title: '在海上運行的船舶，除了帶給人們物資外，卻也為海洋動物帶來噪音，請問在海洋中，船舶的噪音程度等同現實生活中的哪項噪音?',
          options: {'飛機起降聲': false, '工地擴建': true, '吵架聲': false},
        ),
        Question(
          id: 12,
          title: '鯨魚會因為噪音而干擾回聲定位，因而擱淺在岸上，若時間久了，甚至會發生鯨魚爆炸事件(通稱為鯨爆)，請問鯨爆的發生原因為何?',
          options: {'受高溫影響，鯨魚內部的瓦斯氣體被點燃爆炸': false, '內部蓄積過多腐敗氣體而造成身軀爆裂': true, '指將炸藥塞入鯨魚體內引爆，以方便分解流程': false},
        )
      ];
    }
    else {
      return [
        Question(
          id: 12,
          title: '請問那個不是牡蠣目前遇到的主要危機？',
          options: {'重金屬污染': false, '廢棄物危害': false, '空氣汙染': true},
        ),
        Question(
          id: 12,
          title: '請問為什麼溫室效應會導致牡蠣品質與產量逐漸下降，甚至供不應求？',
          options: {'因為海溫上升與酸化，導致牡蠣排精卵生態大亂，開始變瘦': true, '溫室效應讓天氣太熱，導致大家想吃海鮮解暑，使牡蠣供不應求': false, '因為海水太熱，因此牡蠣熱死在海裡': false},
        ),
        Question(
          id: 12,
          title: '關於牡蠣敘述，何者錯誤?',
          options: {'牡蠣殼成分為碳酸鈣，在生成時會消耗二氧化碳，因此有較高的固碳能力': false, '食用牡蠣具有防老抗衰已經防止心血管疾病等優點': false, '主要生活於熱帶的淡水海域內': true},
        )
      ];
    }
  }
}