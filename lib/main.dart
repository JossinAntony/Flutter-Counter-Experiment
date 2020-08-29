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
  int _counter_2 = 0; // 2nd counter

  int _updateCounter(_counter){
    setState(() {
      _counter = _counter + 1;
      print('_counter in function: ' + _counter.toString());  // not getting updated?
    });
    return _counter;
  }

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

                  Text(_counter_2.toString()), //increment using second counter, does not work
                  SizedBox(height: 20),


                  RaisedButton(
                    onPressed: () {
                      setState(() {
                        //_counter++;
                        _counter_2 = _updateCounter(_counter); // this does not seem to work!
                        print('_counter in RaisedButton: ' + _counter.toString()); // strange behaviour here!
                        print('_counter_2 in RaisedButton: ' + _counter_2.toString());// strange behaviour here!
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
