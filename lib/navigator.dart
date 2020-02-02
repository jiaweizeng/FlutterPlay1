import 'package:flutter/material.dart';

import 'package:flutter_app/product.dart';

void main() {
  runApp(MaterialApp(
    title: '导航演示',
    //普通跳转
//      home: new FirstScreen()
    //带参数跳转
//    home: ProductList(products: List.generate(20, (i) => Product('shang pin $i', 'num: $i')))
    //有回调的跳转
    home: new FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("找小姐姐要电话")),
        body: Center(
          child: RouteButton(),
        ));
  }
}

//跳转的Button
class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToXiaoJieJie(context);
      },
      child: Text('去找小姐姐'),
    );
  }

//  SnackBar是用户操作后，显示提示信息的一个控件，类似Tost，会自动隐藏。
//  SnackBar是以Scaffold的showSnackBar方法来进行显示的。

  _navigateToXiaoJieJie(BuildContext context) async {
    //async是启用异步方法

    final result = await Navigator.push(
        //等待
        context,
        MaterialPageRoute(builder: (context) => XiaoJieJie()));

    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我是小姐姐')),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('大长腿小姐姐'),
            onPressed: () {
              Navigator.pop(context, '大长腿:1511008888');
            },
          ),
          RaisedButton(
            child: Text('小蛮腰小姐姐'),
            onPressed: () {
              Navigator.pop(context, '大长腿:1511009999');
            },
          ),
        ],
      )),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Product> products;

  ProductList({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('商品列表')),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
                title: Text(products[index].title),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              new ProductDetail(product: products[index])));
                });
          },
        ));
  }
}

class ProductDetail extends StatelessWidget {
  final Product product;

  ProductDetail({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('${product.title}'),
        ),
        body: Center(
          child: Text('${product.description}'),
        ));
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(title: Text('导航页面')),
        body: Center(
            child: RaisedButton(
          child: Text('查看商品详情页面'),
          onPressed: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new SecondScreen()));
          },
        )));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('技术胖商品详情页')),
        body: Center(
            child: RaisedButton(
          child: Text('返回'),
          onPressed: () {
            Navigator.pop(context);
          },
        )));
  }
}
