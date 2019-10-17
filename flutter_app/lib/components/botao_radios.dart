import 'package:flutter/material.dart';

class BotaoRadios extends StatelessWidget {
  // variaveis
  final String texto;
  final Color corTexto;
  final Color corFundo;
  final Color corBorda;
  // construtor
  const BotaoRadios(
      {Key key,
      this.texto = "Botao",
      this.corTexto = Colors.white,
      this.corFundo,
      this.corBorda})
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
      child: Text(
        texto,
        style: TextStyle(color: corTexto, fontWeight: FontWeight.bold),
      ),
    );
  }
}
