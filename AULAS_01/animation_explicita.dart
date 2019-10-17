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
        appBar: AppBar(title: Text("App Flutter")),
        body: HomeWidget()
      ),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget>
    with Component, SingleTickerProviderStateMixin {
  AnimationController animController;
  Animation<double> animTransUserName;
  Animation<double> animTransPassword;
  Animation<double> animOpacityForgetPassword;
  Animation<double> animButtonSigninCircula;
  Animation<double> animButtonSigninWidth;

  @override
  void initState() {
    super.initState();
    animController = AnimationController(
        duration: Duration(milliseconds: 5000), vsync: this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    animTransUserName =
        Tween<double>(begin: 0, end: 350).animate(CurvedAnimation(
          parent: animController,
          curve: Interval(0, 0.5, curve: Curves.bounceOut )
        ));


    animTransPassword =
        Tween<double>(begin: 0, end: -350).animate(CurvedAnimation(
          parent: animController,
          curve: Interval(0, 0.5, curve: Curves.bounceOut )
        ));


    animOpacityForgetPassword =
        Tween<double>(begin: 1, end: 0).animate(CurvedAnimation(
          parent: animController,
          curve: Interval(0.3, 0.7, curve: Curves.easeInOut )
        ));

    animButtonSigninCircula =
        Tween<double>(begin: 8.0, end: 40.0).animate(CurvedAnimation(
          parent: animController,
          curve: Interval(0, 0.4, curve: Curves.easeInOut )
        ));

    animButtonSigninWidth =
        Tween<double>(begin: MediaQuery.of(context).size.width, end: 50.0).animate(CurvedAnimation(
          parent: animController,
          curve: Interval(0, 0.4, curve: Curves.bounceOut )
        ));
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  _onTap() {
    if (animController.value > 0) {
      animController.reverse();
    } else {
      animController.forward();
    }
  }

  Widget _colunm() {
    return Column(
      children: <Widget>[
        logo(),
        AnimatedBuilder(
          animation: animTransUserName,
          child: inputUserName(),
          builder: (BuildContext context, Widget child) {
            return Transform.translate(
              offset: Offset(animTransUserName.value, 0.0),
              child: child,
            );
          },
        ),
        AnimatedBuilder(
          animation: animTransPassword,
          child: inputPassword(),
          builder: (BuildContext context, Widget child) {
            return Transform.translate(
              offset: Offset(animTransPassword.value, 0.0),
              child: child,
            );
          },
        ),
        AnimatedBuilder(
          animation: animOpacityForgetPassword,
          child: textForgetPassword(),
          builder: (BuildContext context, Widget child) {
            return Opacity(
              opacity: animOpacityForgetPassword.value,
              child: child,
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              _colunm(),
              AnimatedBuilder(
                animation: animController,
                builder: (BuildContext context, Widget child) {
                  return buttonSignIn(
                      onTap: _onTap,
                      width: animButtonSigninWidth.value,
                      circular: animButtonSigninCircula.value,
                      isLoading: animButtonSigninCircula.value > 8.0);
                },
              )
            ],
          )),
    );
  }
}



// componentens
class Component {


  Widget logo({double size = 100, Color color = Colors.red}){
    return Padding(
      padding: const EdgeInsets.only(bottom: 40, top: 40),
      child: Icon(Icons.adjust, size: size, color: color,),
    );
  }


  Widget inputUserName(){
    return Padding(
      padding: const EdgeInsets.only(right: 30.0, left: 30.0, bottom: 15),
      child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  hintText: "Username"
                ),
      )
    );
  }


  Widget inputPassword(){
    return Padding(
      padding: const EdgeInsets.only(right: 30.0, left: 30.0, bottom: 30),
      child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "*******"
                ),
      )
    );
  }

  Widget buttonSignIn({bool isLoading = false, 
  double circular = 8.0, 
  double width = double.infinity, 
  double height = 50, 
  Function onTap, 
  EdgeInsets padding = const EdgeInsets.only(right: 30.0, left: 30.0, top: 70, bottom: 70)}){

    _loading(){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    }

    _text(){
      return Text("Sign In", textAlign: TextAlign.center, style: TextStyle(fontSize:18, color: Colors.white),);
    }


    return InkWell(
      onTap: onTap,
          child: Padding(
        padding: padding,
        child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(circular),
                      color: Colors.red,
                    ),
                    alignment: Alignment.center,
                    child: isLoading?  _loading(): _text()
                    ),
      ),
    );

  }


  Widget textForgetPassword(){
    return Center(child: Text("Forget Password?", textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.underline, color: Colors.grey, fontSize: 16),),);

  }

}