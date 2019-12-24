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
            height: constraint.maxHeight * 0.47,
            decoration: new BoxDecoration(
              color: Color.fromRGBO(74, 74, 74, 1),
              borderRadius: new BorderRadius.all(
                new Radius.circular(20.0),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: constraint.maxHeight * 0.47,
            decoration: new BoxDecoration(
              color: Color.fromRGBO(74, 74, 74, 1),
              borderRadius: new BorderRadius.all(
                new Radius.circular(20.0),
              ),
            ),
            child: SizedBox(),
            margin: EdgeInsets.only(top: constraint.maxHeight * (0.46 + 0.06)),
          ),
          Container(
            child: Center(
              child: Container(
                child: Icon(
                  Icons.repeat,
                  color: Theme.of(context).accentColor,
                ),
              ),
            ),
            height: constraint.maxHeight * 0.2,
            margin: EdgeInsets.only(top: constraint.maxHeight * (0.4)),
            decoration: new BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.circle,
            ),
          ),
        ],
      );
    });
  }
}
