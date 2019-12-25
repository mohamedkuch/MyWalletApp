import 'package:flutter/material.dart';

class MainKeyboard extends StatelessWidget {
  List<Map<String, String>> groupedNumbers(max, fixer) {
    return List.generate(max, (index) {
      return {
        'index': (index.toInt() + fixer).toString(),
        'title': 'z',
      };
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: groupedNumbers(3, 7).map((data) {
              return FlatButton(
                onPressed: () {},
                child: Text(
                  data['index'],
                  style: Theme.of(context).textTheme.button,
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
                onPressed: () {},
                child: Text(
                  data['index'],
                  style: Theme.of(context).textTheme.button,
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
                onPressed: () {},
                child: Text(
                  data['index'],
                  style: Theme.of(context).textTheme.button,
                ),
              );
            }).toList(),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FlatButton(
              onPressed: () {},
              child: Text(
                '0',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                ',',
                style: Theme.of(context).textTheme.button,
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: Icon(
                Icons.backspace,
                color: Theme.of(context).textTheme.button.color,
              ),
            )
          ],
        )
      ],
    );
  }
}
