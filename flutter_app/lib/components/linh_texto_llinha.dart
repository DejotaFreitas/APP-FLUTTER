import 'package:flutter/material.dart';

class LinhaTextoLinha extends StatelessWidget {
  
  final String texto;
  final Color corTexto;
  final Color corLinha;

  const LinhaTextoLinha({Key key, 
  this.texto="Texto", 
  this.corTexto,
  this.corLinha=Colors.grey,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(child: Divider(color: corLinha, height: 20,),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(this.texto, style: TextStyle(color: corTexto ?? Theme.of(context).accentColor, fontWeight: FontWeight.bold)),
          ),
          Expanded(child: Divider(color: corLinha, height: 20),),
        ],
      ),
    );
  }
}
