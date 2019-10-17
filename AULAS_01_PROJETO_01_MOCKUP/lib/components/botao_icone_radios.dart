import 'package:flutter/material.dart';

class BotaoIconeRadios extends StatelessWidget {
  // variaveis
  final String texto;
  final Color corTexto;
  final Color corFundo;
  final Color corBorda;
  final Widget icone;
  final Color corIcone;
  // construtor
  const BotaoIconeRadios(
      {Key key,
      this.texto = "Botao",
      this.corTexto = Colors.white,
      this.corFundo,
      this.corBorda, 
      this.icone, 
      this.corIcone=Colors.white
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: corFundo ?? Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(40),
        border: corBorda == null ? null : Border.all(color: corBorda),
      ),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 15, right: ),
            child: Icon(icone ?? Icons.home, color: Colors.white),
          ),
          Text(texto, style: TextStyle(color: corTexto, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
