import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight}) {
    _bmi = weight / pow(height / 100, 2);
  }
  final height;
  final weight;
  double _bmi;
  String getBmi() {
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterPretation() {
    if (_bmi >= 25) {
      return 'Your BMI is higher than Normal, you should reduce Weight';
    } else if (_bmi >= 18.5) {
      return 'Your BMI is Normal';
    } else {
      return 'Your BMI is lower than Normal, you should gain Weight';
    }
  }
}
