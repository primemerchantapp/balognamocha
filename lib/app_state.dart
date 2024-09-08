import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _choices = 'For you';
  String get choices => _choices;
  set choices(String value) {
    _choices = value;
  }

  LatLng? _office = const LatLng(14.6247103, 121.0563514);
  LatLng? get office => _office;
  set office(LatLng? value) {
    _office = value;
  }
}
