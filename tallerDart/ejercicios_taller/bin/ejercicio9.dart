import 'dart:io';

void main(List<String> args) {
  int numero;

  do {
    print("Ingrese un número del 1 al 99");
    numero = int.parse(stdin.readLineSync()!);
  } while (!(numero >= 9 && numero <= 99));

  if (numero <= 9) {
    print("El número es de una cifra");
  } else if (numero >= 10 || numero <= 99) {
    print("El número es de dos cifras");
  }
}
