import 'package:flutter/material.dart';
import 'package:project_list/src/model/todo_model.dart';
import 'package:project_list/src/repositories/todo_repository.dart';

class HomeController {
  final repository = TodoRepository();
  List<Todo> todos = [];
  final state = ValueNotifier<HomeState>(HomeState.start);

  Future start() async {
    
    state.value = HomeState.loading;
    print(state.value);
    try {
      todos = await repository.fetchTodos();
      state.value = HomeState.success;
      print(state.value);
    } catch (e) {
      state.value = HomeState.error;
    }
    
  }
}

enum HomeState { start, loading, success, error }
