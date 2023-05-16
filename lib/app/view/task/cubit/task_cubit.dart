import 'package:bloc/bloc.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  List<String> listName = [];
  int number = 0;
  TaskCubit() : super(TaskInitial());

  void emitir() {
    emit(TaskData(number: number, listName: listName));
  }

  void incrementNumber() {
    number++;
    emitir();
  }

  void addName(String name) {
    if (listName.contains(name)) {
      listName.remove(name);
    } else {
      listName.add(name);
    }
    emitir();
  }

  bool containsName(String name) {
    if (listName.contains(name)) {
      return true;
    } else {
      return false;
    }
  }
}
