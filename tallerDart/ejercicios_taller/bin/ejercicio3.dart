import 'dart:io';

void main(List<String> args) {
  List productos = [];

  print("Digite el día de la compra");
  int? diaCompra = int.parse(stdin.readLineSync()!);

  double descuentoDia = diaCompra / 100;

  int? comprarProducto;

  double valorCompra = 0;

  do {
    print("\nDigite el producto que desea comprar");
    String? producto = stdin.readLineSync();

    productos.add(producto);

    print("\nDigite el valor del producto");
    double valor = double.parse(stdin.readLineSync()!);

    valorCompra += valor;

    productos.add(valor);

    print("\nComprar otro producto 1.Si, 2.No");
    comprarProducto = int.parse(stdin.readLineSync()!);
  } while (comprarProducto == 1);

  if (diaCompra != 15 && diaCompra != 30) {
    double descuentoPorcentaje = descuentoDia * valorCompra;

    double descuento = valorCompra - descuentoPorcentaje;

    print("\nEl valor total a pagar con el descuento es: $descuento");
  } else {
    print("\nNo tiene descuento. Valor a pagar: $valorCompra");
  }

  print('\nProductos comprados $productos');
}
