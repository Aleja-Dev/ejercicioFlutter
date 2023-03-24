import 'dart:io';

void main(List<String> args) {
  String usuario = "Alejandra";
  String contrasena = "123";

  print("Ingrese su usuario");
  String? usuario1 = stdin.readLineSync();

  print("Ingrese su contraseña");
  String? contrasena1 = stdin.readLineSync();

  int intentos = 1;

  if (contrasena != contrasena1 || usuario != usuario1) {
    while (intentos <= 2) {
      print("Usuario o contraseña incorrecto. Vuelva a intentarlo: ");

      print("Ingrese su usuario");
      String? usuario1 = stdin.readLineSync();

      print("Ingrese su contraseña");
      String? contrasena1 = stdin.readLineSync();

      intentos += 1;

      if (intentos == 3) {
        print("Cuenta bloqueada");
      }
    }
  }
}
