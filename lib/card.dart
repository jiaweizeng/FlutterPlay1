import 'package:flutter/material.dart';
void main () => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title:new Text('fghdfgh',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: new Text('ad:565646'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title:new Text('ghjj',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: new Text('asdf:35466'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
          ),
          new Divider(),
          ListTile(
            title:new Text('fghshs',style: TextStyle(fontWeight: FontWeight.w500),),
            subtitle: new Text('ghjfg:45636'),
            leading: new Icon(Icons.account_box,color: Colors.lightBlue,),
          ),
          new Divider(),

        ],
      ),

    );


    return MaterialApp(
      title:'ListView widget',
      home:Scaffold(
        appBar:new AppBar(
          title:new Text('卡片布局'),
        ),
        body:Center(child:card),
      ),
    );
  }
}