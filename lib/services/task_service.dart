import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';
import '../models/task_model.dart';

class TaskService {
  Future<void> createTask(TaskModel task) async {
    final taskObject = ParseObject('ResearchTask')
      ..set('title', task.title)
      ..set('description', task.description)
      ..set('priority', task.priority)
      ..set('deadline', task.deadline)
      ..set('status', task.status);

    await taskObject.save();
  }

  Future<List<ParseObject>> getTasks() async {
    QueryBuilder<ParseObject> query =
        QueryBuilder<ParseObject>(ParseObject('ResearchTask'))
          ..orderByDescending('createdAt');

    final response = await query.query();

    if (response.success && response.results != null) {
      return response.results as List<ParseObject>;
    }

    return [];
  }

  Future<void> deleteTask(String objectId) async {
    final taskObject = ParseObject('ResearchTask')
      ..objectId = objectId;

    await taskObject.delete();
  }

  Future<void> updateTask(TaskModel task) async {
    final taskObject = ParseObject('ResearchTask')
      ..objectId = task.objectId
      ..set('title', task.title)
      ..set('description', task.description)
      ..set('priority', task.priority)
      ..set('deadline', task.deadline)
      ..set('status', task.status);

    await taskObject.save();
  }
}