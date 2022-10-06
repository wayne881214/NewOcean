import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class MapData {
  final String user;
  final double latitude;
  final double longitude;
  final String type;
  final String title;
  final String snippet;
  late final Map<String, Object> api;

  MapData(this.user, this.latitude, this.longitude, this.type, this.title, this.snippet);

  factory MapData.fromJson(Map<String, dynamic> json) {
    return MapData(json['user'], json['latitude'], json['longitude'],
        json['type'],
        json['title'],
        json['snippet']);
  }
}
void createApi(MapData MapData) {
  MapData.api = {
    "user": MapData.user,
    "latitude": MapData.latitude,
    "longitude": MapData.longitude,
    "type": MapData.type,
    "title": MapData.title,
    "snippet": MapData.snippet,
  };
}