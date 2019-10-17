import 'package:flutter/material.dart';
import 'package:flutter_app/telas/login/pages/login_page.dart';
import 'package:flutter_app/telas/login/pages/signin_page.dart';
import 'package:flutter_app/telas/login/pages/signup_page.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(      
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //image
          Image.asset("assets/img/fundo/praia.jpg", fit: BoxFit.cover,),          
          //PageView
          PageView(
            children: <Widget>[
              SignupPage(), 
              LoginPage(),             
              SigninPage(),                           
            ],
          )
        ],
      ),
    );
  }
}