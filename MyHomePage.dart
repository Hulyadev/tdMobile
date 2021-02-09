import 'package:flutter/material.dart';
import 'package:todolist/data/todos.dart' as todos;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _message = "You have pushed the button this many times:";

  void _incrementCounter() {
    setState(() {
      //print('update state')
      _counter++;

      if (_counter == 3) {
        _message = "Stop";
      }
    });
  }

  Color _getColorAccordingToCounter() {
    return (_counter == 1) ? Colors.green : Colors.red;
  }

  Widget _addButton() {
    return FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: Icon(
        Icons.add,
        //color: Colors.white,
        color: _getColorAccordingToCounter(),
      ),
    );
  }

  Widget _getButtonAccordingToCounter() {
    return (_counter == 3) ? Container() : _addButton();
  }

  @override
  Widget build(BuildContext context) {
    //print('reconstruct screen');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              _message,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),

          ],

        ),

      ),
      floatingActionButton: _getButtonAccordingToCounter(),


    );

  }
}
