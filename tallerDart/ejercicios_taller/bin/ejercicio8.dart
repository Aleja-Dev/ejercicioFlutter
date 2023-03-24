import 'dart:io';

void main(List<String> args) {
  print("Ingrese su edad: ");
  int edad = int.parse(stdin.readLineSync()!);

  if (edad >= 6 && edad <= 17) {
    print("Se encuentra en la categoría junior");
  } else if (edad >= 18 && edad <= 29) {
    print("Se encuentra en la categoría Adulto");
  } else if (edad >= 30 && edad <= 39) {
    print("Se encuentra en la categoría Senior");
  } else if (edad >= 40 && edad <= 49) {
    print("Se encuentra en la categoría Super senior");
  } else if (edad >= 50 && edad <= 59) {
    print("Se encuentra en la categoría Veterenos");
  } else if (edad >= 60 && edad <= 69) {
    print("Se encuentra en la categoría Super veteranos");
  }
}
