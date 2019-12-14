import 'package:flutter/material.dart';
import 'package:my_walley/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.pink,
        canvasColor: Color.fromRGBO(255, 255, 250, 1),
        fontFamily: 'TitilliumWeb',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Colors.pink,
            ),
            body2: TextStyle(
              color: Colors.pink,
            ),
            title: TextStyle(
              fontSize: 18,
              fontFamily: 'TitilliumWeb',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
      ),
      home: CategoriesScreen(),
    );
  }
}
