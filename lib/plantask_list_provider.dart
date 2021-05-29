import 'package:flutter/cupertino.dart';
import 'plantask.dart';

class Data extends ChangeNotifier {
  List<Task> taskList = [
    new Task(
        date: DateTime.now(),
        taskName: "Take Sunglasses for travelling",
        isChecked: false),
    new Task(
      date: DateTime.now(),
      taskName: "Visit Mysore Palace",
      isChecked: true,
    ),
    new Task(
      date: DateTime.now(),
      taskName: "Try River Rafting at Rishikesh",
      isChecked: false,
    ),
  ];

  void addToList(String taskName, DateTime taskDate, bool isDone) {
    taskList.add(new Task(
      taskName: taskName,
      date: taskDate,
      isChecked: isDone,
    ));
    notifyListeners();
  }

  void toggleCheckMark(int idx) {
    taskList[idx].toggleIsChecked();
    notifyListeners();
  }

  void deleteItemSwipped(int idx) {
    taskList.removeAt(idx);
    notifyListeners();
  }
}
