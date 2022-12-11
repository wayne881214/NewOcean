class Animal {
  final int id;
  final int state;
  final String imagePath;
  final String name;
  final String site;
  final String food;
  final String describe;
  // ...
  Animal(this.id,this.state,this.imagePath,this.name,this.site,this.food,this.describe);

  static Animal addAnimal(int id, int state) {
    switch (id) {
      case 0:
        return Animal(id,state,"assets/images/animals/lock.png", "未解鎖",
            "哪裡都有可能","軟體生物","海洋動物皆有可能");
      case 1:
        return Animal(id,state,"assets/images/animals/turtle.png", "海龜",
            "亞熱帶海域","浮游生物","海龜都是迴游性的，多數會回到當初出生地，進行交配及產卵。");
      case 2:
        return Animal(id,state,"assets/images/animals/sealion.png", "海獅",
            "熱帶海域","魚類、烏賊、磷蝦等","海獅接受訓練後，能做出如用鼻尖拋球或用鰭足拍掌的動作。");
      case 3:
        return Animal(id,state,"assets/images/animals/whale.png", "鯨魚",
            "熱帶海域","軟體生物","鯨魚群體會透過發聲來從事分辨距離,覓食,警告,求偶等交流行為。");
      case 4:
        return Animal(id,state,"assets/images/animals/ostrica.png", "牡蠣",
            "熱帶海域","軟體生物","鯨魚群體會透過發聲來從事分辨距離,覓食,警告,求偶等交流行為。");
      case 5:
        return Animal(id,state,"assets/images/animals/jellyfish.png", "水母",
            "熱帶海域","軟體生物","鯨魚群體會透過發聲來從事分辨距離,覓食,警告,求偶等交流行為。");
      case 6:
        return Animal(id,state,"assets/images/animals/hippocampus.png", "海馬",
            "熱帶海域","軟體生物","鯨魚群體會透過發聲來從事分辨距離,覓食,警告,求偶等交流行為。");
      case 7:
        return Animal(id,state,"assets/images/animals/coral.png", "珊瑚",
            "熱帶海域","刺胞動物","珊瑚的顏色與其共生的藻類有關。");
      default:
        return Animal(id,state,"assets/images/animals/lock.png", "未解鎖",
            "哪裡都有可能","軟體生物","海洋動物皆有可能");
    }
  }
}
