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

//============================
            // criar botao
            Material(
              elevation: 7,
              color: Colors.blue,
              borderRadius: BorderRadius.circular(40),
              child: InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  print("Clicou!");
                },
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  child: Text("Botao Criado",
                      style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
//============================



            
          ],
        ),
      ),
//====================================================================================
    );
  }
}
