import 'dart:io';

void main(List<String> args) {
  print("Digite las horas trabajadas");
  int? horas = int.parse(stdin.readLineSync()!);

  print("Digite el valor por hora");
  double? valorPorHora = double.parse(stdin.readLineSync()!);

  double salario = horas * valorPorHora;

  print("Su salario es de: $salario");
}
