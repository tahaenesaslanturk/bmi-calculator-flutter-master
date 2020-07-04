import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;
  CalculatorBrain({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return "I'm so sorry :( Please get an attention to your weight!";
    } else if (_bmi > 18.5) {
      return "You are good!";
    } else {
      return "You have to eat more!!";
    }
  }
}
