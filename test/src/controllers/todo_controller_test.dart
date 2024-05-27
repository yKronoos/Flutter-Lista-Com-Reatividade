import 'package:flutter_test/flutter_test.dart';
import 'package:project_list/src/controllers/home_controller.dart';


void main() {
  final controller = HomeController();
  
  test('deve preencher a variavel todos', () async {
    expect(controller.state, HomeState.start);
    await controller.start();
    expect(controller.state, HomeState.success);
    expect(controller.todos.isNotEmpty, true);
  });


}