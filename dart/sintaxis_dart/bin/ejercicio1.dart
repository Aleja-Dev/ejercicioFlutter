import 'dart:io';

void main(List<String> args) {
  print('Cantidad de productos que desea comprar');
  int? cantidad = int.parse(stdin.readLineSync()!);

  dynamic suma;

  List productos = [];

  for (var i = 1; i <= cantidad; i += 2) {
    print('Ingrese el nombre del producto');
    String? producto = stdin.readLineSync();

    print('Ingrese el precio del producto');
    double precio = double.parse(stdin.readLineSync()!);

    productos.add(producto);

    productos.add(precio);

    suma += precio;
  }

  print(productos);

  print(suma);
}
