import 'package:flutter/material.dart';
import './models/converter_single.dart';

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
            child: ConverterSingle(100.00, 'British Pound', 'GBP'),
          ),
          Container(
            width: double.infinity,
            height: constraint.maxHeight * 0.48,
            decoration: new BoxDecoration(
              color: Color.fromRGBO(74, 74, 74, 1),
              borderRadius: new BorderRadius.all(
                new Radius.circular(20.0),
              ),
            ),
            child: ConverterSingle(122.78, 'US Dollar', 'USD'),
            margin: EdgeInsets.only(
              top: constraint.maxHeight * (0.48 + 0.04),
            ),
          ),
          Container(
            child: Center(
              child: Container(
                child: Icon(
                  Icons.autorenew,
                  color: Theme.of(context).accentColor,
                  size: constraint.maxHeight * 0.1,
                ),
              ),
            ),
            height: constraint.maxHeight * 0.18,
            margin: EdgeInsets.only(
              top: constraint.maxHeight * (0.41),
            ),
            decoration: new BoxDecoration(
              color: Theme.of(context).backgroundColor,
              shape: BoxShape.circle,
            ),
          ),
        ],
      );
    });
  }
}
