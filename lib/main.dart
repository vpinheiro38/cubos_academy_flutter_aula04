import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CounterApp(),
  ));
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Aplicativo Contador')),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "O valor atual do contador é:",
            style: TextStyle(fontSize: 24),
          )),
          Center(
              child: Text(
            "$_counter",
            style: TextStyle(fontSize: 34),
          ))
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counter += 1;
              });
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counter -= 1;
              });
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
