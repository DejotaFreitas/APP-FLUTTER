import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

//============================================================================================
// stl
// StatelessWidget
// não sofre alteração
// ele não tem estado
// so é executado uma vez
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BodyWidget(),      
    );
  }
}

//============================================================================================
// stf
// StatefulWidget
// sofre alteração
// usado em local que ocorrem atualização e mudanças
class BodyWidget extends StatefulWidget {
  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  // onde vai ser mudado

  Color cor = Colors.blue; // variavel salvar a cor

  @override
  Widget build(BuildContext context) {
    // parte recontruida do widget
    return GestureDetector(
      onTap: () {
        // recebe clicks
        setState(() {
          // altera o estado
          cor = cor == Colors.blue ? Colors.red : Colors.blue;
        });
      },
      child: Container(
        color: cor,
      ),
    );
  }

  @override
  void initState() {
    // quando o widget estiver sendo iniciado
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // quando o widget estiver pronto e for iniciado
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // quando o widget e destruido
    super.dispose();
  }
}

//============================================================================================
//  conteiner
// widget base para outros widget
class conteinerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//===================
    return Container(
      color: Colors.black, // cor
      width: 300, // largura
      height: 300, // altura
      child: Container(
        // filho que herda tudo do pai, onde as configurações do filho nao fuciona
        color: Colors.black, // cor nao fuciona
        width: 100, // largura nao fuciona
        height: 100, // altura nao fuciona
      ),
    );
//===================
  }
}

//============================================================================================
//TEXTO
class textoCentroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
//===============TEXTO===========================
        child: Text(
          "TEXTO",
          textAlign: TextAlign.center, // texto centralizado

          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 10),
        ),
//==========================================
      ),
    );
  }
}

//============================================================================================
// ICONES
class iconesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//===================
      child: Icon(
        Icons.add,
        color: Colors.green,
      ),
//===================
    );
  }
}

//============================================================================================
// Colunas
class colunasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//===================
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //ALINHAR LISTA AO CENTRO
        crossAxisAlignment:
            CrossAxisAlignment.center, // alinha os filhos para centro

        children: <Widget>[
          Container(
            color: Colors.green,
            width: double.infinity, // largura da tela
            height: 50,
          ),
          Container(
            color: Colors.red,
            width: 100,
            height: double.infinity, // altura da tela
          ),
        ],
      ),
//===================
    );
  }
}

//============================================================================================
// LINHAS
class rowsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//===================
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,

    children: <Widget>[
      Container(width: 50, height: 50, color: Colors.black),
      Container(width: 50, height: 50, color: Colors.blue),
      Container(width: 50, height: 50, color: Colors.green),
      Container(width: 50, height: 50, color: Colors.red),
      Container(width: 50, height: 50, color: Colors.yellow),
      Container(width: 50, height: 50, color: Colors.cyan),
      Expanded( flex: 1, child: Text("Texto 1")), // expande para q fiquem com espaçamento divididos e iguais
      Expanded( flex: 2, child: Text("Texto 2")), // fex define e escala do espassamento
      Expanded( flex: 3,child: Text("Texto 3")), // 
    ],
  ),
//===================
    );
  }
}

//============================================================================================
// Stacks
// coloca um widger em cima do outro
class stacksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//===================
  child: Stack(
    alignment: Alignment.center,

    children: <Widget>[
      Container(width: 100, height: 100, color: Colors.black),
      Container(width: 80, height: 80, color: Colors.blue),
      Container(width: 50, height: 50, color: Colors.green),
      Container(width: 30, height: 30, color: Colors.red),
    ],
    
  ),
//===================
    );
  }
}
//============================================================================================
// Padding
// componente q so tem opções de tamanho
class pandingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//===================
    return Padding(
      //padding: const EdgeInsets.all(8.0),
      //padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      padding: const EdgeInsets.only(top: 1, left: 2, bottom: 3, right: 4),
      child: Container(
        width: double.infinity,
      ),
//===================
    );
  }
}

//============================================================================================
// transform
// movimentar, altera a escala e etc
// .. (2 pontos) executa ele mesmo retorna sua stancia para executar outro metodo
class transformWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//===================
      transform: Matrix4.identity()
        ..scale(1.5)
        ..translate(100.0, 100.0),
//===================
    );
  }
}

//============================================================================================
// decoration
//
// .. (2 pontos) executa ele mesmo retorna sua stancia para executar outro metodo
class decorationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//===================
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: Offset(1.0, 1.0),
              blurRadius: 10)
        ],
      ),
//===================
    );
  }
}

//============================================================================================
//============================================================================================
// imagens 
class imagensWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//===================
    Image.network("https://i.imgur.com/m1jGFvW.jpg", fit: BoxFit.fill),
    Image.asset("assets/imagem.png"),
    //Image.memory(""),
    //Image.file(""),
    // imagem de fundo, backgound
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/imagem.png"), fit: BoxFit.cover)
//===================
    );
  }
}

//============================================================================================
//

//============================================================================================
//

//============================================================================================
//

//============================================================================================
//

//============================================================================================
//

//============================================================================================
//

//============================================================================================
//

//============================================================================================
//

//============================================================================================
//

//============================================================================================
//

//============================================================================================
//
