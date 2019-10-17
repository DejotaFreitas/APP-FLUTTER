import 'package:flutter/material.dart';

class reutilizarWidget extends StatelessWidget {

  final Color cor;
  final String texto;
  // construtor
  const reutilizarWidget({Key key, this.cor=Colors.red, this.texto=""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: cor,
        child: Text(texto),
      ),
    );
  }
}

//===========================como ultilizar====================================
//importar o arquivo
//import 'package:widget/reutilizar.dart';


class  ultilizar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // usar compenente
      child: reutilizarWidget(cor: Colors.teal, texto: "Texto")
    );
  }
}
//===============================================================