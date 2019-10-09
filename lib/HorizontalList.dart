import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Container(
            height: 200,
              /**
               * 方式1
               */
            child: new BalaList(),
            /**
             * 方式2
             */
            /*child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                new Container(
                  child: new Text('111',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Color.fromARGB(255, 255, 150, 150),
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid, //下划线样式
                      )),
                  width: 80,
                  color: Colors.lightBlue,
                ),
                new BalaList(),
                new Container(
                  child: new Text('555'),
                  width: 180,
                  color: Colors.red,
                ),
              ],
            ),*/
          ),
        ),
      ),
    );
  }
}

class BalaList extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          child: new Text('111',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Color.fromARGB(255, 255, 150, 150),
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid, //下划线样式
              )),
          width: 80,
          color: Colors.lightBlue,
        ),
        new Container(
          child: new Text('222'),
          width: 180,
          color: Colors.red,
        ),
        new Container(
          child: new Text('333'),
          width: 180,
          color: Colors.purple,
        ),
        new Container(
          child: new Text('444'),
          width: 180,
          color: Colors.greenAccent,
        ),
      ],
    );
  }
}

