import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/converter_provider.dart';

class MainKeyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ConverterProvider cvProvider =
        Provider.of<ConverterProvider>(context);

    String finalDataTop = cvProvider.getValueTop;
    String finalDataBottom = cvProvider.getValueBottom;

    List<Map<String, String>> groupedNumbers(max, fixer) {
      return List.generate(max, (index) {
        return {
          'index': (index.toInt() + fixer).toString(),
          'title': 'z',
        };
      }).toList();
    }

    _pressButton(data) {
      if (cvProvider.isTopActive) {
        if (cvProvider.getZeroStateTop) finalDataTop = "";
        cvProvider.setValueTop(finalDataTop += data);
      }
      if (cvProvider.isBottomActive) {
        if (cvProvider.getZeroStateBottom) finalDataBottom = "";
        cvProvider.setValueBottom(finalDataBottom += data);
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: groupedNumbers(3, 7).map((data) {
              return FlatButton(
                onPressed: () {
                  _pressButton(data['index'].toString());
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      data['index'],
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: groupedNumbers(3, 4).map((data) {
              return FlatButton(
                onPressed: () {
                  _pressButton(data['index'].toString());
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      data['index'],
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: groupedNumbers(3, 1).map((data) {
              return FlatButton(
                onPressed: () {
                  _pressButton(data['index'].toString());
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      data['index'],
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  _pressButton('0');
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: double.infinity,
                  child: Center(
                    child: Text(
                      '0',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: double.infinity,
                  child: Text(
                    ',',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: double.infinity,
                  child: Icon(
                    Icons.backspace,
                    color: Theme.of(context).textTheme.button.color,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
