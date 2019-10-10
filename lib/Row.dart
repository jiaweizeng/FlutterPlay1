import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
          appBar: new AppBar(
            title: new Text('Grid View'),
          ),
          body: new Row(
            children: <Widget>[
              new RaisedButton(
                onPressed: () {},
                color: Colors.redAccent,
                child: new Text('red'),
              ),
              /**Expanded 可以撑满整行 其它的保持自身大小*/
              Expanded(
                child: new RaisedButton(
                  onPressed: () {},
                  color: Colors.purple,
                  child: new Text('purple'),
                ),
              ),
              new RaisedButton(
                onPressed: () {},
                color: Colors.amber,
                child: new Text('amber'),
              ),
            ],
          )),
    );
  }
}
