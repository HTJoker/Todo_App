import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List todoList = [];

  final Box<dynamic> _myBox = Hive.box('myBox');

  void createInitialData() {
    todoList = [
      ["Make Tutorial", false],
      ["Eating Ass", false]
    ];
  }

  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", todoList);
  }
}
