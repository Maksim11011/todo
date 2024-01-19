import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if thisis the 1st time ever  opening this app
  void createInitialata() {
    toDoList = [
      ["Выполнить Задачу", false],
      ["Выполнить Упражнение", false],
    ];
  }

  // Load the data fom database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
