import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDolist = [];

  // refernce our box
  final _myBox = Hive.box('mybox');

  // run this method if this the 1st time ever starting this app
  void createInitialData() {
    toDolist = [
      ['Make Tutorial', false],
      ['Do Exercise', false]
    ];
  }

  void loadData() {
    toDolist = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDataBase() {
    _myBox.put('TODOLIST', toDolist);
  }
}
