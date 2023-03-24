import 'dart:io';

void main(List<String> args) {
  String? continuar;
  int mujeres = 0;
  int hombres = 0;

  do {
    print("Ingrese su genero Femenino o Masculino");
    String? genero = stdin.readLineSync();

    if (genero == "Femenino") {
      mujeres += 1;
    } else if (genero == "Masculino") {
      hombres += 1;
    } else {
      print("No existe el genero");
    }

    print("¿Desea ingresar otro género?: S o N");
    continuar = stdin.readLineSync();
  } while (continuar == "S");

  print("Cantidad de mujeres que ingresaron $mujeres");

  print("Cantidad de hombres que ingresaron $hombres");
}
