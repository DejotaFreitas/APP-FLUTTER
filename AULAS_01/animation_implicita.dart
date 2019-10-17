import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text("App Flutter")), body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLoading = false;

  _onTap() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _onTap,
          child: AnimatedContainer(
              duration: Duration(milliseconds: 2000),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(isLoading ? 40 : 10),
              ),
              width: isLoading ? 50 : 250,
              height: 50,
              alignment: Alignment.center,
              child: AnimatedCrossFade(
                duration: Duration(milliseconds: 2000),
                firstChild: Center(
                  child: Text("Botão",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                secondChild: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
                crossFadeState: isLoading
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
              )
              /*isLoading
                ? Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : Text(
                    "Botão",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ), */
              ),
        ),
      ),
    );
  }
}
