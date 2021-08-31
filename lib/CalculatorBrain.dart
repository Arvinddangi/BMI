import 'dart:math';


class CalculatorBrain {
  CalculatorBrain({required this.weight, required this.height});

  final int height;
  final int weight;


  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResulit() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  getInterpretation() {
    if (_bmi >= 25) {
      return 'Need Healthy Diet And Exercise';
    } else if (_bmi > 18.5) {
      return 'All Good ';
    } else {
      return 'Need Regular Exercise and Diet';
    }
  }
}