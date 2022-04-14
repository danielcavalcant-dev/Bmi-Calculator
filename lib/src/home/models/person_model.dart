class Person {
  final double altura;
  final double peso;

  Person({required this.altura, required this.peso});

  double getImc() {
    return peso / (altura * altura);
  }
}
