import 'package:flutter/material.dart';


class CurrencySingle extends StatefulWidget {
  final bool isTop;

  CurrencySingle(this.isTop);

  @override
  _CurrencySingleState createState() => _CurrencySingleState();
}

class _CurrencySingleState extends State<CurrencySingle> {
    String dropdownValue = "BTC";

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
      },
      items: ["BTC", "USD"]
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Container(
            child: Text(
              value,
              style: TextStyle(fontSize: 14),
            ),
            decoration: BoxDecoration(),
          ),
        );
      }).toList(),
    );
  }
}
