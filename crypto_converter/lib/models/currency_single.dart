import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/converter_provider.dart';

class CurrencySingle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ConverterProvider cvProvider =
        Provider.of<ConverterProvider>(context);

    return DropdownButton<String>(
      value: cvProvider.getActiveCurrencyTop,
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
        cvProvider.setActiveCurrencyTop(newValue);
      },
      items: <String>['BTC', 'EUR', 'USD', 'ETH']
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
