import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("App Flutter")), body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
//====================================================================================
      child: SingleChildScrollView(
        // LISTA
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
//===========================================================
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ClipPath(
                clipper: RetangularCustomClipper(),             
                child: Container(width: 300, height: 300, color: Colors.orange)),                
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: ClipPath(
                clipper: CircularCustomClipper(),             
                child: Container(width: 300, height: 300, color: Colors.blue)),                
            ),


//===========================================================
          ],
        ),
      ),
//====================================================================================
    );
  }
}


class  RetangularCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width/2, size.height/2);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }  
}




class  CircularCustomClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width, size.height/2, 0, 0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }  
}