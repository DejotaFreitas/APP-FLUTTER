import 'package:flutter/material.dart';
import 'package:flutter_app/components/botao_radios.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          //Logo
          SizedBox(height: 40),
          Icon(Icons.headset_mic, size: 40, color: Colors.white),          
          
          SizedBox(height: 10),
          // texto ja possui conta ?
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              // TextSpan gerencia parte de textos com estilos diferentes
              child: RichText(
                text: TextSpan(
                  text: 'Awesome ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(text: 'App', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              )              
        ),

           SizedBox(height: 120),
          //botao
          BotaoRadios(texto: "SIGN UP", corBorda: Colors.white),

          SizedBox(height: 40),
          //botao
          BotaoRadios(texto: "LOGIN", corTexto: Theme.of(context).accentColor, corFundo: Colors.white,),
        ],
      ),
    );
  }
}
