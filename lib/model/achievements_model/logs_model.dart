import 'package:date_format/date_format.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class Log {
  final int task_id;
  final int task_state;
  final int carbon;
  final String date;
  final List<String> label;
  late final Map<String, Object> api;

  Log(this.task_id, this.task_state, this.carbon, this.date, this.label);

  static Log addTaskLog(int task_id, int task_state) {
    Log resquestLog = setTaskLog(task_id, task_state);
    createApi(resquestLog);
    return resquestLog;
  }

  static Log setTaskLog(int task_id, int task_state) {
    List<String> labels = [];
    labels.add("任務");
    String date = formatDate(
        DateTime.now(), [yyyy, "-", mm, "-", dd, " ", HH, ":", nn, ":", ss]);
    switch (task_id) {
      case 1:
        labels.add("海龜");
        switch (task_state) {
          case 1:
            return Log(task_id, task_state, 1, date, labels);
          case 2:
            labels.add("QRcode");
            labels.add("拍照");
            return Log(task_id, task_state, 1, date, labels);
          case 3:
            labels.add("QRcode");
            labels.add("拍照");
            return Log(task_id, task_state, 1, date, labels);
          default:
            return Log(0, 0, 0, date, labels);
        }
      case 2:
        labels.add("海獅");
        switch (task_state) {
          case 1:
            return Log(task_id, task_state, 1, date, labels);
          case 2:
            labels.add("QRcode");
            labels.add("拍照");
            return Log(task_id, task_state, 1, date, labels);
          case 3:
            labels.add("QRcode");
            labels.add("拍照");
            return Log(task_id, task_state, 1, date, labels);
          default:
            return Log(0, 0, 0, date, labels);
        }
      case 3:
        labels.add("鯨魚");
        switch (task_state) {
          case 1:
            return Log(task_id, task_state, 1, date, labels);
          case 2:
            labels.add("QRcode");
            labels.add("拍照");
            return Log(task_id, task_state, 1, date, labels);
          case 3:
            labels.add("QRcode");
            labels.add("拍照");
            return Log(task_id, task_state, 1, date, labels);
          default:
            return Log(0, 0, 0, date, labels);
        }
      case 4:
        labels.add("牡蠣");
        switch (task_state) {
          case 1:
            return Log(task_id, task_state, 1, date, labels);
          case 2:
            labels.add("QRcode");
            labels.add("拍照");
            return Log(task_id, task_state, 1, date, labels);
          case 3:
            labels.add("QRcode");
            labels.add("拍照");
            return Log(task_id, task_state, 1, date, labels);
          default:
            return Log(0, 0, 0, date, labels);
        }
      default:
        return Log(0, 0, 0, date, labels);
    }
  }

  static void createApi(Log log_data) {
    log_data.api = {
      "date": log_data.date,
      "task_id": log_data.task_id,
      "task": log_data.task_id,
      "carbon": log_data.carbon,
      "task_state": log_data.task_state,
      "id": "${log_data.task_id}-${log_data.task_state}",
      "label": log_data.label,
    };
  }

  factory Log.fromJson(Map<String, dynamic> json) {
    List<String> labels = [];
    json['label'].forEach((item) => labels.add(item));
    return Log(json['task_id'], json['task_state'], json['carbon'],
        json['date'], labels);
  }
}
