class UserData {
  final String uid;
  final String name;

  late final Map<String, Object> api;

  UserData(this.uid, this.name,);

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(json['uid'], json['name']);
  }
}
void createApi(UserData UserData) {
  UserData.api = {
    "uid": UserData.uid,
    "name": UserData.name
  };
}