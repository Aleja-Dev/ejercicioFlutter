import 'dart:io';

void main(List<String> arguments) {
  print("Digite el sueldo base del vendedor \n");
  double? sueldo = double.parse(stdin.readLineSync()!);

  print("Digite la cantidad de productos vendidos en el mes \n");
  int? cantidadProductos = int.parse(stdin.readLineSync()!);

  if (cantidadProductos >= 30) {
    double? comisionPorVenta = sueldo * 1.10;

    double? comision = comisionPorVenta - sueldo;

    print("Su comisión es: $comision \n");

    print("Valor total a pagar $comisionPorVenta \n");
  } else {
    print("No recibe comisión \n");

    print("Valor total a pagar $sueldo");
  }
}
