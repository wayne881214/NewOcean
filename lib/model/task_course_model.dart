class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course> generateCourses(int id) {
    switch (id) {
      case 1:
        return [
        Course('一', 'assets/icons/picture.png', '鼻孔裡有異物卡住',
            'assets/images/task_carousel_turtle_1.jpg'),
        Course('二', 'assets/icons/picture.png', '痛得緊閉雙眼掙扎',
            'assets/images/task_carousel_turtle_2.jpg'),
        Course('三', 'assets/icons/picture.png', '10公分的塑膠吸管',
            'assets/images/task_carousel_turtle_3.jpg'),
        ];
      case 2:
        return [
          Course('一', 'assets/icons/picture.png', '脖子被勒住了',
              'assets/images/task_carousel_sea_lion_1.png'),
          Course('二', 'assets/icons/picture.png', '怎麼甩也甩不掉',
              'assets/images/task_carousel_sea_lion_2.jpg'),
          Course('三', 'assets/icons/picture.png', '救救我',
              'assets/images/task_carousel_sea_lion_3.png'),
        ];
      case 4:
        return [
          // 牡蠣在台灣俗稱「蚵仔」，從夜市蚵仔煎到餐廳生蠔料理都能看見牠的身影，因為牠的美妙滋味與營養價值，牡蠣作為海鮮已是重要台灣生活中的重要美食
          Course('照片一', 'assets/icons/picture.png', '台灣經典美食-蚵仔',
              'assets/images/task_carousel_ostrica_1.jpg'),
          Course('照片二', 'assets/icons/picture.png', '塑膠微粒污染最嚴重',
              'assets/images/task_carousel_ostrica_2.jpg'),
          Course('照片三', 'assets/icons/picture.png', '海溫上升使牡蠣變瘦',
              'assets/images/task_carousel_ostrica_3.jpg'),
        ];
      case 3:
        return [
          Course('鯨魚擱淺(一)', 'assets/icons/bell.png', '噪音干擾下鯨魚找不到回家方向', 'assets/images/task_carousel_whale_1.png'),
          Course('鯨魚擱淺(二)', 'assets/icons/bell.png', '高溫曝曬死亡的鯨魚', 'assets/images/task_carousel_whale_2.png'),
          Course('鯨魚擱淺(三)', 'assets/icons/bell.png', '時間長了甚至會發生鯨爆', 'assets/images/task_carousel_whale_3.jpg'),
        ];
      default:
        return [
          Course('照片一', 'assets/icons/picture.png', '描述...',
              'assets/images/task_carousel_turtle_1.jpg'),
        ];
    }
  }
}
