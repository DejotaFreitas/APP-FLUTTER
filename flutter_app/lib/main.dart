import 'package:flutter/material.dart';
import 'package:flutter_app/telas/login/login_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Color(0xFFFF65E5C),
      ),
      home: LoginWidget()
    );
  }
}
