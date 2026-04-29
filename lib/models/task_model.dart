import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

class TaskModel {
  String? objectId;
  String title;
  String description;
  String priority;
  String deadline;
  String status;

  TaskModel({
    this.objectId,
    required this.title,
    required this.description,
    required this.priority,
    required this.deadline,
    required this.status,
  });

  factory TaskModel.fromParseObject(ParseObject obj) {
    return TaskModel(
      objectId: obj.objectId,
      title: obj.get<String>('title') ?? '',
      description: obj.get<String>('description') ?? '',
      priority: obj.get<String>('priority') ?? '',
      deadline: obj.get<String>('deadline') ?? '',
      status: obj.get<String>('status') ?? '',
    );
  }
}