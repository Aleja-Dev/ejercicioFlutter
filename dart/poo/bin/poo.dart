import 'dart:io';

import 'package:poo/heroe.dart';
import 'package:poo/poo.dart' as poo;

void main(List<String> arguments) {
// Heroe h = Heroe("Evelin", "Volar");

// // print(h.nombre);

// h.info();

// Heroe.saludar(h.nombre);

  int opcion = 0;

  do {
    print(
        "Escribe \n1.Para agregar un heroe \n2.Para editar heroe \n3.Para listar heroes \n4.Para eliminar heroe \n5.Buscar heroe \n6.Para salir");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        Heroe
            .agregarHeroe(); //Accede directamente al metodo desde la clase heroe (sin necesidad de crear un objeto), ya que el metodo es estático

        break;
      case 2:
        Heroe.editarHeroe();
        break;

      case 3:
        Heroe.listaHeroes();
        break;
      case 4:
        Heroe.eliminarHeroe();
        break;
      case 5:
        Heroe.buscarHeroe();
        break;
      default:
    }
  } while (opcion != 6);
}
