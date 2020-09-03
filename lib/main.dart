import 'package:flutter/cupertino.dart';
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
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            style: BorderStyle.solid,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.amber.withOpacity(.25),
                              offset: Offset(0, 0),
                              blurRadius: 5,
                              spreadRadius: 5,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            _counter.toString(),
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ButtonTheme(
                      minWidth: 100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: Colors.red),
                      ),
                      child: RaisedButton.icon(
                        onPressed: () {
                          setState(() {
                            _counter++;
                          });
                        },icon: Icon(Icons.control_point), label: Text('Increment'),
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    ButtonTheme(
                      minWidth: 100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color:Colors.red),
                      ),
                      buttonColor: Colors.blue,
                      splashColor: Colors.amber,
                      child: RaisedButton.icon(onPressed: (){
                        setState(() {
                          _counter--;
                        });
                      }, icon: Icon(Icons.remove), label: Text('Decrement')),
                    )
                  ],
                ))));
  }
}
