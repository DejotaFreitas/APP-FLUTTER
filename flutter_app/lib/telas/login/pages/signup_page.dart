import 'package:flutter/material.dart';
import 'package:flutter_app/components/botao_radios.dart';
import 'package:flutter_app/components/input_text.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Logo
          SizedBox(height: 40),
          Icon(Icons.headset_mic,
              size: 40, color: Theme.of(context).accentColor),

          SizedBox(height: 40),
          InputText(label: "EMAIL", placeholder: "email@email.com"),

          SizedBox(height: 40),
          InputText(label: "PASSWORD", placeholder: "**************"),

          SizedBox(height: 40),
          InputText(label: "COMFIRME PASSWORD", placeholder: "**************"),
          
          SizedBox(height: 20),
          // texto ja possui conta ?
          Container(
              width: double.infinity,
              child: Text("Already have an account ?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor))),

           SizedBox(height: 40),
          //botao
          BotaoRadios(texto: "SIGN UP"),
        ],
      ),
    );
  }
}
