import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Counter'),
          ),
            body: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[

                  Text(_counter.toString()),
                  SizedBox(height: 20),


                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        _counter++;
                      });
                    },
                    color: Colors.blue,
                    child: Text('+'),


                  ),
                    ],
                  ),
                ))));
  }
}
