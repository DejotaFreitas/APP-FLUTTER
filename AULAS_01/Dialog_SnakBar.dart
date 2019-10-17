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
          body: Container(
            width: double.infinity,
            height: double.infinity,
//==========================================================================================
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
//=====================================
                  Builder(builder: (BuildContext context) {
                    return RaisedButton(
                      child: Text("SnackBar"),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text("Ola SnackBar"),
                        ));
                      },
                    );
                  }),

//======================
                  Builder(builder: (BuildContext context) {
                    return RaisedButton(
                      child: Text("Dialog"),
                      color: Colors.purple,
                      textColor: Colors.white,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Titulo"),
                                content: Text("Conteudo do Dialago"),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("OK!"),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              );
                            });
                      },
                    );
                  }),
//=====================================
                ],
              ),
            ),
//==========================================================================================
          )),
    );
  }
}
