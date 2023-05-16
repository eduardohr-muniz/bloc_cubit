part of 'task_cubit.dart';

abstract class TaskState {
  List<String>? listName = [];
  int? number;
  TaskState({this.listName, this.number});
}

class TaskInitial extends TaskState {
  TaskInitial() : super(listName: [], number: 0);
}

class TaskData extends TaskState {
  TaskData({List<String>? listName, int? number}) : super(listName: listName, number: number);
}
