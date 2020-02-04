import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    在Scaffold里放置了一个列容器，然后把ClipPath控件放到了里边，ClipPath的子元素是一个容器控件Container。
//    BootomClipper是我们自定义的一个对象，里边主要就是切割的路径。
    return Scaffold(
        body:Column(
          children: <Widget>[
//        clipPath控件可以把其内部的子控件切割，它有两个主要属性（参数）:
//
//        child :要切割的元素，可以是容器，图片.....
//        clipper : 切割的路径，这个要和CustomClipper对象配合使用。
            ClipPath(
              clipper:BottomClipperTest(),
              child: Container(
                color:Colors.deepPurpleAccent,
                height: 200.0,
              ),
            )
          ],
        )
    );
  }
}

class BottomClipperTest extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    /**二阶贝塞尔曲线路径*/
    /*path.lineTo(0, 0);
    path.lineTo(0, size.height-30);
    var firstControlPoint =Offset(size.width/2,size.height);
    var firstEndPoint = Offset(size.width,size.height-30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width, size.height-30);
    path.lineTo(size.width, 0);*/
    /**波浪形贝塞尔曲线路径*/
    path.lineTo(0, size.height-20);
    var firstControlPoint =Offset(size.width/4,size.height);
    var firstEndPoint = Offset(size.width/2.25,size.height-30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width/4*3,size.height-80);
    var secondEndPoint = Offset(size.width,size.height-40);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height-40);
    path.lineTo(size.width, 0);
    return path;

  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}