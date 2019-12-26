import 'package:flutter/material.dart';

class ConverterProvider with ChangeNotifier {
  bool _topActive = true;
  bool _bottomActive = false;
  bool _zeroStateTop = true;
  bool _zeroStateBottom = true;
  String _valueTop = "Not yet set";
  String _valueBottom = "Not yet set";
  String _activeCurrencyTop = "BTC";
  String _activeCurrencyBottom = "USD";

  setTop(bool tmp) {
    _topActive = tmp;
    _bottomActive = !tmp;
    notifyListeners();
  }

  setBottom(bool tmp) {
    _bottomActive = tmp;
    _topActive = !tmp;
    notifyListeners();
  }

  setValueTop(String val) {
    _valueTop = val;
    _zeroStateTop = false;
    notifyListeners();
  }

  setValueBottom(String val) {
    _valueBottom = val;
    _zeroStateBottom = false;
    notifyListeners();
  }
  setActiveCurrencyTop(input) {
    _activeCurrencyTop = input;
    notifyListeners();
  }
  bool get isTopActive => _topActive;
  bool get isBottomActive => _bottomActive;
  bool get getZeroStateTop => _zeroStateTop;
  bool get getZeroStateBottom => _zeroStateBottom;
  String get getValueTop => _valueTop;
  String get getValueBottom => _valueBottom;

  String get getActiveCurrencyTop => _activeCurrencyTop;
  String get getActiveCurrencyBottom => _activeCurrencyBottom;
}
