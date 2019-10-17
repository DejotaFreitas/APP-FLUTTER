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
        appBar: AppBar(),
        body: MyHomePage()
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // SCROLL
//====================================================================================
      child: SingleChildScrollView(
        // LISTA
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            // BOTAO
            RaisedButton(
              onPressed: () {
                print("RaisedButton");
              },
              color: Colors.blue,
              child: Text("Click Raised Button"),
            ),

            // BOTAO ICON
            RaisedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.branding_watermark),
                label: Text("Click no Raised Button Icon")),

            // CIRCULO
            CircleAvatar(
              backgroundColor: Colors.cyan,
              child: Text("D"),
            ),


            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(width: 150, height: 150, color: Colors.purple),
            ),
             Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(width: 150, height: 150, color: Colors.redAccent),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(width: 150, height: 150, color: Colors.yellow),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(width: 150, height: 150, color: Colors.orange),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(width: 150, height: 150, color: Colors.pink),
            ),
            

          ], 
                  
        ),
      ),
//====================================================================================
    );
  }
}
