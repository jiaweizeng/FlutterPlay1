import 'package:flutter/material.dart';
import 'asset.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '搜索页面',
        theme:ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:SearchBarDemo()
    );
  }
}

class SearchBarDemo extends StatefulWidget {
  _SearchBarDemoState createState() => _SearchBarDemoState();
}

class _SearchBarDemoState extends State<SearchBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:Text('SearchBarDemo'),
            actions:<Widget>[
              IconButton(
                  icon:Icon(Icons.search),
                  onPressed: (){
                    showSearch(context:context,delegate: searchBarDelegate());
                  }
              ),
            ]
        )
    );

  }
}

class searchBarDelegate extends SearchDelegate<String>{
//  buildActions方法时搜索条右侧的按钮执行方法，我们在这里方法里放入一个clear图标。
//  当点击图片时，清空搜索的内容。
  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon:Icon(Icons.clear),
        onPressed: ()=>query = "",)
    ];
  }

//  这个时搜索栏左侧的图标和功能的编写，这里我们才用AnimatedIcon，
//  然后在点击时关闭整个搜索页面，代码如下。
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      child: Card(
        color: Colors.redAccent,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentSuggest
        : searchList.where((input) => input.startsWith(query)).toList();
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) => ListTile(
          title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(color: Colors.grey))
                  ])),
        ));
  }


}