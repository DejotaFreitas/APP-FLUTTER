import 'package:flutter/material.dart';

//Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => NotificacaoPage()));
                
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // icon menu esquerda do APP BAR
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              //DrawerHeader( child: Container( color: Colors.blue)),
              UserAccountsDrawerHeader(
                accountName: Text("Dejota Freitas"),
                accountEmail: Text("djxpgs@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.account_circle),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.redAccent,
                ),
                decoration: BoxDecoration(color: Colors.redAccent),
              ),
              //menus
              ListTile(leading: Icon(Icons.home), title: Text("Home")),
              ListTile(leading: Icon(Icons.account_circle), title: Text("Usuario")),
              ListTile(leading: Icon(Icons.notifications), title: Text("Notificações")),
              ListTile(leading: Icon(Icons.arrow_back), title: Text("Sair")),
            ],
          ),
        ),

        // home
        body: HomePage(),

        // barra superior
        appBar: AppBar(title: Text("App Flutter"),

            // icon menu esquerda do APP BAR
            //leading: IconButton(icon: Icon(Icons.menu), onPressed: (){},),

            // icons dos butoes da direta do APP BAR
            actions: <Widget>[
              IconButton(icon: Icon(Icons.home),
                onPressed: () { }, ),
              IconButton(icon: Icon(Icons.notifications),
                onPressed: () {},  ),
              IconButton(icon: Icon(Icons.account_circle),
                onPressed: () {},  ),
            ]),

        // botao flutuante
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {  print("FloatingActionButton");   },
        ),

        // menu inferior
        bottomNavigationBar:
          BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("Notificações"), icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(title: Text("Usuario"), icon: Icon(Icons.account_circle)),
        ]),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ));
  }
}

class NotificacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 300,
          color: Colors.green,
        ));
  }
}

class UsuarioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Container(
          width: 300,
          height: 300,
          color: Colors.red,
        ));
  }
}
