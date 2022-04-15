import '../models/person_model.dart';

class BmiController {
  double _altura = 0;
  double _peso = 0.0;

  setAltura(String value) => _altura = double.tryParse(value) ?? 0;
  void setPeso(String value) => _peso = double.tryParse(value) ?? 0;

  String result = '';

  void calculateBmi() {
    final bmiValue = Person(altura: _altura, peso: _peso).getImc();
    final bmiText = bmiValue.toStringAsFixed(2);

    if (bmiValue < 18) {
      result = 'O seu BMI é $bmiText.';
    } else if (bmiValue > 18 && bmiValue < 24) {
      result = 'O seu BMI é $bmiText.';
    } else {
      result = 'O seu BMI é $bmiText.';
    }
  }
}
