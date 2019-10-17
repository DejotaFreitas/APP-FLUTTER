import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  
  final String label;
  final String placeholder;

  const InputText({Key key, this.label="", this.placeholder=""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //LABEL
          Text(this.label, style: TextStyle(color: Theme.of(context).accentColor,  fontWeight: FontWeight.bold)),
          //INPUT
          TextField(
            //autofocus: false,
            decoration: InputDecoration(
              //PLACEHOLDER
              hintText: placeholder,
              // COR DA BORDA
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).accentColor)),
            ),
          )
        ],
      ),
    );
  }
}
