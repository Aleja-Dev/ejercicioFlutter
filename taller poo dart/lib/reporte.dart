import 'participante.dart';

class Reporte {
  static List listaInhabilitados = [];

  static List<Participante> listaSeleccionados = [];

  static seleccionados(Participante seleccionado) {
    listaSeleccionados.add(seleccionado);
  }

  static inhabilitados(Participante inhabilitado) {
    listaInhabilitados.add(inhabilitado.nombre);
    listaInhabilitados.add(inhabilitado.apellido);
    listaInhabilitados.add(inhabilitado.documento);
  }
}
