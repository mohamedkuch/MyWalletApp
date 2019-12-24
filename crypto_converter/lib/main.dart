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
        primaryColor: Color.fromRGBO(30, 30, 30, 1),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              child: TopBar(),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.15,
            ),
            Container(
              child: MainConverter(),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.4,
              width:MediaQuery.of(context).size.width * 0.8  ,
              
            ),
            Container(
              child: MainKeyboard(),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.37,
            ),
            Container(
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Theme.of(context).accentColor,
                elevation: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Center(
                    child: Text(
                      'Convert',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
              ),
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.1,
            )
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
