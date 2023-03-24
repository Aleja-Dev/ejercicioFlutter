import 'dart:io';

import 'heroe.dart';

class Marvel {
  late String nombre;
  late int salario;

  static List reclutados = [];

  Marvel(this.nombre, this.salario);

  static reclutarHeore() {
    var h = Heroe.buscarHeroe();

    if (h != null) {
      print("Escribe el salario del heroe: ");
      int salario = int.parse(stdin.readLineSync()!);
      reclutados.add(Marvel(h.nombre, salario));
      print("Heroe ejecutado");
    } else {
      print("No exite el heroe");
    }
  }
}
