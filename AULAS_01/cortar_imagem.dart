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

            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 200,
                height: 200,
                child: ClipOval(
                    child: Image.network(
                        "https://ap.imagensbrasil.org/images/imagens-lobos.jpg",
                        fit: BoxFit.cover)),
              ),
            ),
            
            Text("Dejota Fretias",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            Text("djxpgs@gmail.com",
                style: TextStyle(color: Colors.grey, fontSize: 18)),
            RaisedButton.icon(
                icon: Icon(Icons.cached),
                label: Text("Visualizar"),
                color: Colors.orange,
                textColor: Colors.white,
                onPressed: () {}),


            //
            SizedBox(height: 100),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 300,
                height: 300,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.network(
                        "https://ap.imagensbrasil.org/images/imagens-lobos.jpg",
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
//====================================================================================
    );
  }
}
