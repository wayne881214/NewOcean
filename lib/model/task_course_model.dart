class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course> generateCourses(int id) {
    switch(id){
      case 1:
        return [
        Course('一', 'assets/icons/bell.png', '鼻孔裡有異物卡住', 'assets/images/task_carousel_turtle_1.jpg'),
        Course('二', 'assets/icons/bell.png', '痛得緊閉雙眼掙扎', 'assets/images/task_carousel_turtle_2.jpg'),
        Course('三', 'assets/icons/bell.png', '10公分的塑膠吸管', 'assets/images/task_carousel_turtle_3.jpg'),
        ];
      case 2:
        return [
        Course('照片一', 'assets/icons/bell.png', '描述...', 'assets/images/task_carousel_turtle_1.jpg'),
        Course('照片二', 'assets/icons/bell.png', '描述...', 'assets/images/task_carousel_turtle_2.jpg'),
        Course('照片三', 'assets/icons/bell.png', '描述...', 'assets/images/task_carousel_turtle_3.jpg'),
        ];
      default:
        return [
          Course('照片一', 'assets/icons/bell.png', '描述...', 'assets/images/task_carousel_turtle_1.jpg'),
        ];
    }
  }
}