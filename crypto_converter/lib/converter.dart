import 'package:flutter/material.dart';
import './models/converter_single.dart';

class MainConverter extends StatefulWidget {
  final String data;

  MainConverter(this.data);

  @override
  _MainConverterState createState() => _MainConverterState();
}

class _MainConverterState extends State<MainConverter> {
  var bottomConverterActive = false;
  var topConverterActive = true;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraint) {
      return Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                bottomConverterActive = false;
                topConverterActive = true;
              });
            },
            child: Container(
              width: double.infinity,
              height: constraint.maxHeight * 0.46,
              decoration: new BoxDecoration(
                color: topConverterActive
                    ? Color.fromRGBO(74, 74, 74, 1)
                    : Color.fromRGBO(74, 74, 74, 0.3),
                borderRadius: new BorderRadius.all(
                  new Radius.circular(20.0),
                ),
              ),
              child: ConverterSingle('${widget.data}', 'British Pound', 'GBP'),
            ),
          ),
          GestureDetector(
            child: Container(
              width: double.infinity,
              height: constraint.maxHeight * 0.48,
              decoration: new BoxDecoration(
                color: bottomConverterActive
                    ? Color.fromRGBO(74, 74, 74, 1)
                    : Color.fromRGBO(74, 74, 74, 0.3),
                borderRadius: new BorderRadius.all(
                  new Radius.circular(20.0),
                ),
              ),
              child: ConverterSingle('${widget.data}', 'US Dollar', 'USD'),
              margin: EdgeInsets.only(
                top: constraint.maxHeight * (0.48 + 0.04),
              ),
            ),
            onTap: () {
              setState(() {
                bottomConverterActive = true;
                topConverterActive = false;
              });
            },
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
