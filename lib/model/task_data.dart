import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todo_app_using_provider/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _task = [
    Task(name: 'Make Tea'),
    Task(name: 'Boil milk'),
    Task(name: 'Make coffee'),
  ];

  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }

  int get taskCount {
    return _task.length;
  }

  void addNewTask(String taskTitle) {
    final myTask= Task(name: taskTitle);
    _task.add(myTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _task.remove(task);
    notifyListeners();
  }
}