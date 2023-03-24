import 'package:flutter/material.dart';
import 'package:flutter_application_1/autos_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/portada.png'),
          const Text("AUTOS MB",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 3, 128, 30)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AutosPage()),
              );
            },
            child: const Text("Explorar Vehículos"),
          ),
        ],
      ),
    );
  }
}
