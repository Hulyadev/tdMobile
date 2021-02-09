import 'package:flutter/material.dart';
import 'package:todolist/data/todos.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todolist',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Todos(),
    );

  }
}
