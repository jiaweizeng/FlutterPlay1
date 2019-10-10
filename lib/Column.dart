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
          title: new Text('垂直方向布局'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,//对齐
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('阿斯顿发的说法第三方'),
            Text('热热热后改为提高'),
            Text('官方'),
            Text('是大法官'),
            Center(child: Text('i am balabala'),),
            Expanded(child: Center(child: Text('o hoooooooo'),),),
            Center(child: Text('Emmmmmmmmm'),),
          ],
        ),
      ),
    );
  }
}
