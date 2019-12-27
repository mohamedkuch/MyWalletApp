import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ConverterProvider with ChangeNotifier {
  bool _topActive = true;
  bool _bottomActive = false;
  bool _zeroStateTop = true;
  bool _zeroStateBottom = true;
  String _valueTop = "Not yet set";
  String _valueBottom = "Not yet set";
  String _activeCurrencyTop = "BTC";
  String _activeCurrencyBottom = "USD";
  List _cryptoList;
  List<String> _cryptoSymolList = ["BTC", "USD"];

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

  setActiveCurrencyBottom(input) {
    _activeCurrencyBottom = input;
    notifyListeners();
  }

  Future<void> getCryptoPrices() async {
    const _apiURL = "https://api.coinmarketcap.com/v1/ticker/";
    try {
      http.Response response = await http.get(_apiURL);
      _cryptoList = jsonDecode(response.body);
      _cryptoSymolList = [];
      for (int i = 0; i < 20; i++) {
        _cryptoSymolList.add(_cryptoList[i]['symbol'].toString());
      }
    } catch (error) {
      print(error);
      throw error;
    }
  }

  void _printData() {
    print(_topActive);
    print(_bottomActive);
    print(_valueTop);
    print(_valueBottom);
    print(_activeCurrencyTop);
    print(_activeCurrencyBottom);
  }

  bool get isTopActive => _topActive;
  bool get isBottomActive => _bottomActive;
  bool get getZeroStateTop => _zeroStateTop;
  bool get getZeroStateBottom => _zeroStateBottom;

  String get getValueTop => _valueTop;
  String get getValueBottom => _valueBottom;
  String get getActiveCurrencyTop => _activeCurrencyTop;
  String get getActiveCurrencyBottom => _activeCurrencyBottom;

  List get getCryptoList => _cryptoList;
  List<String> get getCryptoSymbolList => _cryptoSymolList;
}
