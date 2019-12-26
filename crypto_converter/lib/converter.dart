import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/converter_single.dart';
import 'providers/converter_provider.dart';

class MainConverter extends StatelessWidget {
  final String dataTop;
  final String dataBottom;

  MainConverter(this.dataTop, this.dataBottom);

  @override
  Widget build(BuildContext context) {
    final ConverterProvider cvProvider =
        Provider.of<ConverterProvider>(context);

    return LayoutBuilder(builder: (ctx, constraint) {
      return Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              cvProvider.setTop(true);
            },
            child: Container(
              width: double.infinity,
              height: constraint.maxHeight * 0.46,
              decoration: new BoxDecoration(
                color: cvProvider.isTopActive
                    ? Color.fromRGBO(74, 74, 74, 1)
                    : Color.fromRGBO(74, 74, 74, 0.3),
                borderRadius: new BorderRadius.all(
                  new Radius.circular(20.0),
                ),
              ),
              child:
                  ConverterSingle('$dataTop', 'British Pound', 'GBP'),
            ),
          ),
          GestureDetector(
            child: Container(
              width: double.infinity,
              height: constraint.maxHeight * 0.48,
              decoration: new BoxDecoration(
                color: cvProvider.isBottomActive
                    ? Color.fromRGBO(74, 74, 74, 1)
                    : Color.fromRGBO(74, 74, 74, 0.3),
                borderRadius: new BorderRadius.all(
                  new Radius.circular(20.0),
                ),
              ),
              child:
                  ConverterSingle('$dataBottom', 'US Dollar', 'USD'),
              margin: EdgeInsets.only(
                top: constraint.maxHeight * (0.48 + 0.04),
              ),
            ),
            onTap: () {
              cvProvider.setBottom(true);
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
