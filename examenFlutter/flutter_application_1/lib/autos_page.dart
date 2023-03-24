import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'lista_autos.dart';

class AutosPage extends StatelessWidget {
  const AutosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemCount: autos.length,
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    autos[index]['Imagen'],
                    scale: 4,
                  ),
                  Column(
                    children: [
                      Text(autos[index]['Modelo'],
                          style: const TextStyle(color: Colors.green)),
                      Text(autos[index]['Marca']),
                      Text(autos[index]['Precio'],
                          style: const TextStyle(color: Colors.green)),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
