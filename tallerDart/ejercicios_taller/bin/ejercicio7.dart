import 'dart:io';

void main(List<String> args) {
  print("Digite el valor de su compra: ");
  double valor = double.parse(stdin.readLineSync()!);

  if (valor >= 1000000) {
    double porcentajeDescuento = valor * 0.2;

    double descuento = valor - porcentajeDescuento;

    double iva = descuento * 1.19;

    print("Su descuento es de: $descuento");
    print("Valor total a pagar: $iva");
  } else {
    double totalValor = valor * 1.19;

    print("No tiene descuento");

    print("Valor total a pagar: $totalValor");
  }
}
