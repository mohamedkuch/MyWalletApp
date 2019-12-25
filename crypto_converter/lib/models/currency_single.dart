import 'package:flutter/material.dart';

class CurrencySingle extends StatefulWidget {
  CurrencySingle({Key key}) : super(key: key);

  @override
  _CurrencySingleState createState() => _CurrencySingleState();
}

class _CurrencySingleState extends State<CurrencySingle> {
  String dropdownValue = 'BTC';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: Theme.of(context).primaryColor,
      ),
      iconSize: 24,
      style: TextStyle(
        color: Theme.of(context).primaryColor,
      ),
      underline: Container(
        color: Theme.of(context).accentColor,
        height: 1,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['BTC', 'EUR', 'USD', 'ETH']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(
            child: Text(
              value,
            ),
            decoration: BoxDecoration(
            ),
          ),
        );
      }).toList(),
    );
  }
}
