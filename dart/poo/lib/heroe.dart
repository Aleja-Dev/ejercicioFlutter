import 'dart:io';

class Heroe {
  late String
      nombre; //Late para indicar que los atributos pueden ser iniciados más tarde
  late String poder;

  static List<Heroe> heroes = [];

  Heroe(this.nombre, this.poder); //los constructores con sus métodos

  void info() => print(
      "$nombre - $poder"); // método flecha para imprimir el nombre y el poder del heroe

  static void saludar(String nombre) =>
      print("Hola soy el superheroe, $nombre");

//------------------------------------------------------------------------------

  static agregarHeroe() {
    print("Escriba el nombre del heroe");
    String nombre = stdin.readLineSync()!;

    print("Escriba el poder del heroe");
    String poder = stdin.readLineSync()!;

    var h = Heroe(nombre,
        poder); // guarda el heroe en una variable h la cual por el valor asignado será un objeto

    heroes.add(h); //guarda el objeto en la lista

    print("Heroe agregado correctamente \n");
  }

  static listaHeroes() {
    if (heroes.length <= 0) {
      print("No hay heroes en la lista");
    } else {
      for (var h in heroes) {
        print("${h.nombre} - ${h.poder}");
      }
    }
  }

  static Heroe? buscadorHeroes() {
    print("Escribe el nombre del heroe");
    String buscarHeroe = stdin.readLineSync()!;

    for (var h in heroes) {
      if (h.nombre == buscarHeroe) {
        return h;
      }
    }

    return null;
  }

  static Heroe? buscarHeroe() {
    //método de tipo heroe ya que va a retornar algo
    print("Escriba el nombre del heroe que desea encontrar");
    String buscar = stdin.readLineSync()!;

    for (var h in heroes) {
      if (h.nombre == buscar) {
        print('Heroe: ${h.nombre}');
      } else {
        return null;
      }
    }
  }

  static editarHeroe() {
    var h = buscadorHeroes();

    if (h != null) {
      print("que quieres editar 1.Nombre 2.Poder");
      int opcion = int.parse(stdin.readLineSync()!);

      if (opcion == 1) {
        print("Escribe el nuevo nombre: ");
        String nuevoNombre = stdin.readLineSync()!;

        h.nombre = nuevoNombre;
      } else if (opcion == 2) {
        print("Escribe el nuevo poder");
        String nuevoPoder = stdin.readLineSync()!;

        h.poder = nuevoPoder;
      }
    } else {
      print("Heroe no encontrado\n");
    }
  }

  static eliminarHeroe() {
    var h = buscadorHeroes();

    if (h != null) {
      heroes.removeAt(heroes.indexOf(h));
      print("Heroe eliminado \n");
    } else {
      print("Heroe no encontrado \n");
    }
  }
}
