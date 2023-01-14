import 'package:app_todo/todo_list.dart';
import 'package:flutter/material.dart';
import 'form.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'list',
      routes: {
        'list': (context) => const ToDoList(),
        'form': (context) => const Formulary(),
      },
      debugShowCheckedModeBanner: false,
      title: 'ToDo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
