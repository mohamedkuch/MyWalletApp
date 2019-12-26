import 'package:flutter/material.dart';
import './top_bar.dart';
import './converter.dart';
import './keyboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        accentColor: Color.fromRGBO(190, 161, 141, 1),
        backgroundColor: Color.fromRGBO(30, 30, 30, 1),
        primaryColor: Colors.white,
        canvasColor: Color.fromRGBO(60, 60, 60, 1),
        textTheme: TextTheme(
          headline: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          title: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          body1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            color: Colors.white,
          ),
          button: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _keyboardListener = "Not set yet";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Align(
                child: TopBar(),
                alignment: Alignment.centerRight
              ),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.1,
            ),
            Container(
              child: MainConverter(_keyboardListener),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.46,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            Container(
              child: MainKeyboard(callback: (val) => setState(() => _keyboardListener = val)),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.4,
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
