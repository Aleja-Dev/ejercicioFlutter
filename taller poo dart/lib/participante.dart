import 'dart:io';

import 'reporte.dart';

class Participante {
  late String documento;
  late String nombre;
  late String apellido;
  late String direccion;
  late int estrato;
  late String telefono;
  late String grupoSisben;
  late int gradoEscolar;
  bool? estado;

  static List<Participante> participantes = [];

  Participante(
      this.nombre,
      this.documento,
      this.apellido,
      this.direccion,
      this.estrato,
      this.telefono,
      this.grupoSisben,
      this.gradoEscolar,
      this.estado);

  static registrarParticipante() {
    print("Digite el nombre del participante");
    String nombre = stdin.readLineSync()!;

    print("Digite el documento del participante");
    String documento = stdin.readLineSync()!;

    print("Digite el apellido del participante");
    String apellido = stdin.readLineSync()!;

    print("Digite la dirección del participante");
    String direccion = stdin.readLineSync()!;

    print("Digite el estrato del participante");
    int estrato = int.parse(stdin.readLineSync()!);

    while (!(estrato >= 1 && estrato <= 6)) {
      print("El estrato digitado no es correcto");
      print("Digite el estrato del participante");
      estrato = int.parse(stdin.readLineSync()!);
    }

    print("Digite el telefono del participante");
    String telefono = stdin.readLineSync()!;

    print("Digite el grupo de sisben del participante");
    String grupoSisben = stdin.readLineSync()!;

    while (!(grupoSisben == "A" ||
        grupoSisben == "B" ||
        grupoSisben == "C" ||
        grupoSisben == "D")) {
      print("El grupo de sisben digitado no es correcto");
      print("Digite el grupo de sisben del participante");
      grupoSisben = stdin.readLineSync()!;
    }

    print("Digite el grado escolar del participante");
    int gradoEscolar = int.parse(stdin.readLineSync()!);

    while (!(gradoEscolar >= 1 && gradoEscolar <= 11)) {
      print("El grupo escolar digitado no es correcto");
      print("Digite el grado escolar del participante");
      gradoEscolar = int.parse(stdin.readLineSync()!);
    }

    var p = Participante(nombre, documento, apellido, direccion, estrato,
        telefono, grupoSisben, gradoEscolar, true);

    participantes.add(p);

    print("\nRegistrado correctamente\n");

    var condicion1 = grupoSisben == "A" || grupoSisben == "B";
    var condicion2 = estrato == 1 || estrato == 2;
    var condicion3 = gradoEscolar == 11;
    if (condicion1 && condicion2 && condicion3) {
      print(
          "El participante cumple con los requisitos para ser seleccionado\n");
      Reporte.seleccionados(p);
    } else {
      print(
          "El participante no cumple con los requisitos para ser seleccionado\n");

      Reporte.inhabilitados(p);
    }
  }

  static consultarParticipante() {
    if (participantes.length <= 0) {
      print("\nNo hay participantes registrados\n");
    } else {
      for (var P in participantes) {
        print(
            "\n${P.nombre} - ${P.apellido} - ${P.documento} - ${P.direccion} - ${P.estrato} - ${P.telefono} - ${P.grupoSisben} - ${P.gradoEscolar}\n");
      }
    }
  }

  static Participante? buscarParticipantes() {
    print("Digite el documento del participante que desea buscar");
    String documento = stdin.readLineSync()!;

    for (var P in participantes) {
      if (P.documento == documento) {
        return P;
      } else {
        return null;
      }
    }
  }

  static buscarParticipante() {
    print("Digite el documento del participante que desea buscar");
    String documento = stdin.readLineSync()!;

    for (var P in participantes) {
      if (P.documento == documento) {
        print(
            "\n${P.nombre} - ${P.apellido} - ${P.documento} - ${P.direccion} - ${P.estrato} - ${P.telefono} - ${P.grupoSisben} - ${P.gradoEscolar}\n");
      } else {
        print("\nEl participante no esta registrado\n");
      }
    }
  }

  static editarParticipante() {
    var participante = buscarParticipantes();

    if (participante != null) {
      print(
          "Dgite el campo que desea editar: \n1.Nombre \n2.Apellido \n3.Teléfono");
      int opcion = int.parse(stdin.readLineSync()!);

      if (opcion == 1) {
        print("Digite el nuevo nombre");
        String nuevoNombre = stdin.readLineSync()!;
        participante.nombre = nuevoNombre;
        print("\nNombre editado correctamente\n");
      } else if (opcion == 2) {
        print("Digite el nuevo apellido");
        String nuevoApellido = stdin.readLineSync()!;
        participante.apellido = nuevoApellido;
        print("\nApellido editado correctamente\n");
      } else {
        print("Digite el nuevo telefono");
        String nuevoTelefono = stdin.readLineSync()!;
        participante.telefono = nuevoTelefono;
        print("\nTeléfono editado correctamente\n");
      }
    } else {
      print("\nEl participante no esta registrado\n");
    }
  }

  static inabilitarParticipante() {
    var p = buscarParticipantes();

    if (p != null) {
      Reporte.inhabilitados(p!);

      if (Reporte.listaSeleccionados.contains(p)) {
        var pocision = Reporte.listaSeleccionados.indexOf(p);
        Reporte.listaSeleccionados.removeAt(pocision);
      }

      print("\nParticipante inabilitado\n");
    } else {
      print("\nEl participante que quiere inabilitar no esta registrado\n");
    }
  }
}
