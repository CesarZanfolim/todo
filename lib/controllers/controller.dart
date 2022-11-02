import 'package:todo/models/todo_model.dart';
import 'package:todo/repositories/repository.dart';

class Controller {
  final Repository repository;

  Controller(this.repository);

  Future<List<ToDoModel>> getToDo() async {
    final result = await repository.getToDo();
    return result;
  }
}
