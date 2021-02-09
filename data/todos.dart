import 'package:todolist/models/Todo.dart';
import 'package:flutter/material.dart';

class Todos extends StatefulWidget {
  @override
  _TodosState  createState() => _TodosState();

  }

class _TodosState extends State<Todos>{
  List<Todo>todos = [
    Todo(
      title: 'ma tâche',
      content: 'menage',
      isDone: true,
    ),
    Todo(
      title:'faire courses',
      content: 'banane',
      isDone: false,
    ),
    Todo(
      title: 'medecin',
      content: 'menage',
      isDone: true,
    ),
    Todo(
      title:'garage',
      content: 'banane',
      isDone: false,
    ),
    Todo(
      title: 'ma tâche',
      content: 'menage',
      isDone: true,
    ),
    Todo(
      title:'faire courses',
      content: 'banane',
      isDone: false,
    ),
    Todo(
      title: 'ma tâche',
      content: 'menage',
      isDone: true,
    ),
    Todo(
      title:'faire courses',
      content: 'banane',
      isDone: false,
    ),
     Todo(
      title: 'ma tâche',
      content: 'menage',
      isDone: true,
    ),
    Todo(
      title:'shopping',
      content: 'vetement',
      isDone: false,
    ),    Todo(
      title: 'coiffeur',
      content: 'cheveux',
      isDone: true,
    ),
    Todo(
      title:'aller au ski',
      content: 'ski',
      isDone: false,
    ),    Todo(
      title: 'petanque',
      content: 'boule',
      isDone: true,
    ),
    Todo(
      title:'cinema',
      content: 'film',
      isDone: false,
    ),
    Todo(
      title:'anniversaire',
      content: 'bougie',
      isDone: false,
    ),


  ];

  TextEditingController controller = new TextEditingController();

  _toggleTodo(Todo todo, bool isChecked){
    setState(() {
      todo.isDone = isChecked;
    });
  }

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];
    
    return CheckboxListTile(
        value: todo.isDone,
        title: Text(todo.title),
        onChanged: (bool isChecked){
          _toggleTodo(todo, isChecked);
        },

    );

}

_addTodo() {
  showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        title: Text('Tâches'),
        content: TextField(
          controller: controller,
          autofocus: true,

        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Retour'),
            onPressed: (){
              Navigator.of(context).pop();
              controller.clear();
            },
          ),
          FlatButton(
            child: Text('Ajouter'),
            onPressed: (){
              setState(() {
                final todo = new Todo(title: controller.value.text);
                todos.add(todo);
                controller.clear();
                Navigator.of(context).pop();
              });
            },
          ),

        ],
      );
    }
  );
}

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Todo List')),
        body: ListView.builder(
          itemBuilder: _buildItem,
          itemCount: todos.length,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _addTodo,
        ),
      );
    }
  }
