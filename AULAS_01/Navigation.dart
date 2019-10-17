import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Center(
            child: RaisedButton(
          child: Text("Segunda Pagina"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SegundaPagina()));
          },
          //navegar e esquecer a anterior
          //Navigator.pushReplacement(context,  MaterialPageRoute(builder: (BuildContext context) => SegundaPagina()));
        )));
  }
}

class SegundaPagina extends StatefulWidget {
  @override
  _SegundaPaginaState createState() => _SegundaPaginaState();
}

class _SegundaPaginaState extends State<SegundaPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Segunda Pagina")),
        body: Center(
            child: RaisedButton(
          child: Text("Home"),
          onPressed: () {
            Navigator.pop(context);
          },
        )));
  }
}
