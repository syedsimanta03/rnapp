import 'package:flutter/foundation.dart';
import 'dart:math';

class RandomizerChangeNotifier extends ChangeNotifier {

  final _randomGenerator = Random();

  int? _generatedNumber;
  int? get generatedNumber => _generatedNumber;

  int min = 0, max = 0;

  void generatedRandomNumber() {
     _generatedNumber = min + _randomGenerator.nextInt(max + 1 - min);
     notifyListeners();
  }
  
  
}