import 'package:dio/dio.dart';
import 'package:project_list/src/model/todo_model.dart';

class TodoRepository {
  final Dio dio = Dio();
  final url = 'https://jsonplaceholder.typicode.com/todos';

  Future<List<Todo>> fetchTodos() async{
    final response = await dio.get(url);
    final list = response.data as List;

    List<Todo> todos = [];

    for(var json in list){
      final todo = Todo.fromJson(json);

      todos.add(todo);
    }

    return todos;
  } 
}