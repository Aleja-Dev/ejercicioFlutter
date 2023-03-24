import 'dart:io';

void main(List<String> args) {
  int opcion = 0;

  List invitados = [];

  do {
    print(
        "Elija la opción que desee 1. Ingresar invitado 2.Editar invitado 3.Eliminar invitado 4.Mostrar invitados 5.Cantidad de invitados registrados 6.Salir");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Ingrese el nombre del invitado");
        String? nombre = stdin.readLineSync();

        invitados.add(nombre);

        break;
      case 2:
        print("Ingrese el nombre del invitado que desea editar");
        String? buscarNombre = stdin.readLineSync();

        if (!invitados.contains(buscarNombre)) {
          print("El invitado no esta registrado");
        } else {
          print("\nEditar nombre: ");
          String? editNombre = stdin.readLineSync();

          int posicionInvitado = invitados.indexOf(buscarNombre);

          invitados[posicionInvitado] = editNombre;
        }

        break;
      case 3:
        print("Ingrese el nombre del invitado que desea eliminar");
        String? eliminar = stdin.readLineSync();

        int posicion = invitados.indexOf(eliminar);

        invitados.removeAt(posicion);

        break;
      case 4:
        print("Invitados registrados \n");

        print(invitados);

        break;

      case 5:
        print("Cantidad de invitados \n");

        print(invitados.length);

        break;
    }
  } while (opcion != 6);
}
