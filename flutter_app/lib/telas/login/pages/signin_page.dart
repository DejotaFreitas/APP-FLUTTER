import 'package:flutter/material.dart';
import 'package:flutter_app/components/botao_icone_radios.dart';
import 'package:flutter_app/components/botao_radios.dart';
import 'package:flutter_app/components/input_text.dart';
import 'package:flutter_app/components/linh_texto_llinha.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

        //Logo
          Icon(Icons.headset_mic,
              size: 40, color: Theme.of(context).accentColor),

          SizedBox(height: 40),
          InputText(label: "EMAIL", placeholder: "email@email.com"),

          SizedBox(height: 40),
          InputText(label: "PASSWORD", placeholder: "**************"),


          SizedBox(height: 20),
          // texto ja possui conta ?
          Container(
              width: double.infinity,
              child: Text("Forgot Password ?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor))),

           SizedBox(height: 40),
          //botao
          BotaoRadios(texto: "LOGIN"),

          SizedBox(height: 20),
          LinhaTextoLinha(texto: "OR CONNECT WITH"),
           SizedBox(height: 20),
          Row(children: <Widget>[
            Expanded(child: BotaoIconeRadios(texto: "FACEBOOK", corFundo: Colors.blue,)),
            Container(width: 20,),
            Expanded(child: BotaoIconeRadios(texto: "GOOGLE")),
          ],)
         
          


      ],),
    );
  }


}