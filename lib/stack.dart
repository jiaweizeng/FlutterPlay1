import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.2),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'http://photocdn.sohu.com/20130416/Img372885486.jpg'),
          radius: 100,
        ),
        new Container(
          decoration: new BoxDecoration(color: Colors.lightBlue),
          padding: EdgeInsets.all(5),
          child: new Text('张傻子'),
        ),
        new Positioned(
          top: 10.9,
          left: 11.9,
          child: new Text('张大爷'),
        )
      ],
    );

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ceng die '),
        ),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}
