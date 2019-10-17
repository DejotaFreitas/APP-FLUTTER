import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  PageController controler;

  @override
  void initState() {    
    super.initState();
    controler = PageController(initialPage: 0);
    controler.addListener(() {
      print("Mudou pagina ${controler.page}");
    });    
  }

  @override
  void dispose() {
    controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> pages = [
      "Home",
      "Favorito",
      "Conta",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              controler.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease);
            },
          ),
          IconButton(icon: Icon(Icons.layers),  onPressed: () {
              controler.jumpToPage(0);
            },
          ),
          IconButton(
            icon: Icon(Icons.keyboard_arrow_right),
            onPressed: () {
              controler.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.ease);
            },
          ),
        ],
      ),
      body: PageView.builder(
        controller: controler,
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(child: Text(pages[index]));
        },
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: controler,
        builder: (BuildContext context, Widget child) {
          return BottomNavigationBar(
            onTap: (index) {controler.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.ease);},
            
            currentIndex: (){try { return controler.page.round(); } catch (e) { return 0; }}(),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
              BottomNavigationBarItem(title: Text("Favoritos"), icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(title: Text("Conta"), icon: Icon(Icons.account_box)),
            ],
          );
        },
      ),
    );
  }
}

/*
// indicado para poucos itens
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // PageView carrega todos itens na contrução, indicado para poucos itens
    return PageView(
      children: <Widget>[
        Container(child:  Center(child: Text("Texto 1"),), color: Colors.blueGrey,),
        Container(child:  Center(child: Text("Texto 2"),), color: Colors.redAccent,),
        Container(child:  Center(child: Text("Texto 3"),), color: Colors.purple,),
      ],
      //scrollDirection: Axis.vertical, // muda direção da rolagem para vertical
      //physics: ClampingScrollPhysics(), //mudar efeitos da fisica de rolagem
      onPageChanged: (pageInt) { print(pageInt); }, //int da pagina atual 
    );
  }
*/
