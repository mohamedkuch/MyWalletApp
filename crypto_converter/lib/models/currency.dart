import 'package:flutter/foundation.dart';

class Transaction {
  final String currency;
  final String title;
  final double amount;

  Transaction({
    @required this.currency,
    @required this.title,
    @required this.amount,
  });
}
