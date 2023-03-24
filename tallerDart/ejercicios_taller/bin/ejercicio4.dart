import 'dart:io';

void main(List<String> args) {
  print("Digite la primera nota");
  double? nota1 = double.parse(stdin.readLineSync()!);

  print("Digite la segunda nota");
  double? nota2 = double.parse(stdin.readLineSync()!);

  print("Digite la tercera nota");
  double? nota3 = double.parse(stdin.readLineSync()!);

  double promedio = nota1 + nota2 + nota3 / 3;

  double porcentajePromedio = promedio * 0.45;

  print("Digite el la calificación del examen final");
  double? examen = double.parse(stdin.readLineSync()!);

  double porcentajeExamen = examen * 0.30;

  print("Digite la nota del trabajo final");
  double? trabajoFinal = double.parse(stdin.readLineSync()!);

  double porctjetrabjoFinal = trabajoFinal * 0.25;

  double notaFinal = porcentajePromedio + porcentajeExamen + porctjetrabjoFinal;

  print("Su nota final es: $notaFinal");
}
