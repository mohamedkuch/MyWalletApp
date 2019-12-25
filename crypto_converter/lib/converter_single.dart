import 'package:flutter/material.dart';

class ConverterSingle extends StatelessWidget {
  @required
  final String currency;
  @required
  final String title;
  @required
  final double amount;

  ConverterSingle(this.amount, this.title, this.currency);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Text(
                    '$title',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  margin: EdgeInsets.only(left: 20),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    '$currency',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          child: Text(
            '$amount',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.normal,
            ),
          ),
          margin: EdgeInsets.only(left: 20),
        ),
      ],
    );
  }
}
