import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/converter_provider.dart';

class CurrencySingle extends StatefulWidget {
  final bool isTop;

  CurrencySingle(this.isTop);

  @override
  _CurrencySingleState createState() => _CurrencySingleState();
}

class _CurrencySingleState extends State<CurrencySingle> {
  @override
  Widget build(BuildContext context) {
    final ConverterProvider cvProvider =
        Provider.of<ConverterProvider>(context);

    String dropdownValue = 'BTC';
    String dropdownValueBottom = 'BTC';

    return DropdownButton<String>(
      value: widget.isTop ? dropdownValue : dropdownValueBottom,
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
          if (widget.isTop)
            dropdownValue = newValue;
          else
            dropdownValueBottom = newValue;
        });
        if (widget.isTop)
          cvProvider.setActiveCurrencyTop(newValue);
        else
          cvProvider.setActiveCurrencyBottom(newValue);
      },
      items: cvProvider.getCryptoSymbolList
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
