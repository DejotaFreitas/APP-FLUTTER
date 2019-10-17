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
        appBar: AppBar(title: Text("App Flutter")),
        body: MyHomePage()
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {

  _onPressed() { print("onPressed"); }

  @override
  Widget build(BuildContext context) {
    return Container(
//====================================================================================
      child: ListView(
        //scrollDirection: Axis.horizontal, // direcao da lista mas so fuciona com alguns widgets

        children: <Widget>[
          
          ListTile(
            title: Text("titulo"),
            leading: Icon(Icons.add_box),
            subtitle: Text("subtitulo"),
            onTap: _onPressed,
          ),

           ListTile(
            title: Text("titulo"),
            leading: Icon(Icons.add_box),
            subtitle: Text("subtitulo"),
            onTap: _onPressed,
          ),

           ListTile(
            title: Text("titulo"),
            leading: Icon(Icons.add_box),
            subtitle: Text("subtitulo"),
            onTap: _onPressed,
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
//====================================================================================
    );
  }
}
