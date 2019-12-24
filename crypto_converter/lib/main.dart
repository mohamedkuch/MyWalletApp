import 'package:flutter/material.dart';

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
    final topBar = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(
                Icons.sort,
                size: 30,
              ),
              onPressed: () {},
              color: Theme.of(context).accentColor,
            ),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(),
          ),
          Expanded(
            flex: 1,
            child: IconButton(
              icon: Icon(
                Icons.brightness_6,
                size: 30,
              ),
              onPressed: () {},
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
      height: (MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top) *
          0.2,
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,

      body: topBar,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
