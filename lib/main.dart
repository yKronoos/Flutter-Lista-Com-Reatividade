import 'package:flutter/material.dart';
import 'package:project_list/src/home_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.red
        ),
        primarySwatch: Colors.red
      ),
      home: HomePage(),
    );
  }
}