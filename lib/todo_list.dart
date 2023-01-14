// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List list = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tarefas'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final variavel = await Navigator.pushNamed(context, 'form');
          setState(() {
            if (variavel != null) {
              list.add(variavel);
            }
          });
        },
        tooltip: 'Adicionar nova  tarefa',
        child: const Icon(Icons.add),
      ),
      body:Padding(
        padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
         child:ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(
          thickness: 1.0,
        ),
        itemCount: list.length,
        itemBuilder: ((context, index) => ListTile(
              title: Text(
                '${list[index]}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            )),
      ),
      )
    );
  }
}


    

