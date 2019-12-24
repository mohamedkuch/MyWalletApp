import 'package:flutter/material.dart';

class MainConverter extends StatefulWidget {
  @override
  _MainConverterState createState() => _MainConverterState();
}

class _MainConverterState extends State<MainConverter> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraint) {
      return Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: constraint.maxHeight * 0.46,
            decoration: new BoxDecoration(
              color: Color.fromRGBO(74, 74, 74, 1),
              borderRadius: new BorderRadius.all(
                new Radius.circular(20.0),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: constraint.maxHeight * 0.46,
            decoration: new BoxDecoration(
              color: Color.fromRGBO(74, 74, 74, 1),
              borderRadius: new BorderRadius.all(
                new Radius.circular(20.0),
              ),
            ),
            child: SizedBox(),
            margin: EdgeInsets.only(top:  constraint.maxHeight * (0.46 +0.08) ),
          ),
           Container(
            child: Center(
              child: Container(
                color: Theme.of(context).accentColor,
                child: Icon(Icons.ac_unit),
              ),
            ),
            height: constraint.maxHeight * 0.08,
            margin: EdgeInsets.only(top:  constraint.maxHeight * 0.46),
          ),
        ],
      );
    });
  }
}
