import 'dart:io';

import '../lib/participante.dart';
import '../lib/reporte.dart';

void main(List<String> args) {
  int opcion = 0;

  do {
    print(
        "Seleccione la opción que necesite: \n1.Registro del participante \n2.Consulta de parcipantes \n3.Consulta por participante \n4.Edición de datos \n5.Inhabilitar participante \n6.Reporte de seleccionados \n7.Reporte de inhabilitados \n8.Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        Participante.registrarParticipante();

        break;
      case 2:
        Participante.consultarParticipante();

        break;
      case 3:
        Participante.buscarParticipante();
        break;
      case 4:
        Participante.editarParticipante();
        break;
      case 5:
        Participante.inabilitarParticipante();
        break;
      case 6:
        if (Reporte.listaSeleccionados.length <= 0) {
          print("\nNo hay participantes seleccionados\n");
        } else {
          print('\nParticipantes seleccionados:\n');
          for (var P in Reporte.listaSeleccionados) {
            print(
                "\n${P.nombre} - ${P.apellido} - ${P.documento} - ${P.direccion} - ${P.estrato} - ${P.telefono} - ${P.grupoSisben} - ${P.gradoEscolar}\n");
          }
          print("");
        }
        break;
      case 7:
        if (Reporte.listaInhabilitados.length <= 0) {
          print("\nNo hay participantes seleccionados\n");
        } else {
          print(
              '\nParticipantes inabilitados: \n${Reporte.listaInhabilitados}\n');
        }
        break;
    }
  } while (opcion != 8);
}
