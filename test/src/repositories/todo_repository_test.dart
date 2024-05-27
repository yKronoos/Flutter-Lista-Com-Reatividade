import 'package:flutter_test/flutter_test.dart';
import 'package:project_list/src/repositories/todo_repository.dart';

void main() {

  final repository = TodoRepository();

  test('Trazer lista de model Todo', () async {
    final todos = await repository.fetchTodos();

    expect(todos.isNotEmpty, true);
  });
}