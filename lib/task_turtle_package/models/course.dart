class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);
  
  static List<Course> generateCourses() {
    return [
      Course('照片一', 'assets/icons/bell.png', '描述...', 'assets/images/task_carousel_turtle_1.jpg'),
      Course('照片二', 'assets/icons/bell.png', '描述...', 'assets/images/task_carousel_turtle_2.jpg'),
      Course('照片三', 'assets/icons/bell.png', '描述...', 'assets/images/task_carousel_turtle_3.jpg'),
    ];
  }
}