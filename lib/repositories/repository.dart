import 'package:todo/models/todo_model.dart';
import 'package:dio/dio.dart';

abstract class Repository {
  Future<List<ToDoModel>> getToDo();
}

class RepositoryDio implements Repository {
  @override
  Future<List<ToDoModel>> getToDo() async {
    final dio = Dio();
    final response = await dio
        .get('https://crudcrud.com/api/973bd6720815455382a242109f01d38d');
    final toDo = (response.data as List).map((item) {
      return ToDoModel.fromJson(item);
    }).toList();
    return toDo;
  }
}
