import 'package:flutter/material.dart';
import 'productos.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cafeteria Flutter"), centerTitle: true),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Image.asset("assets/logo.png", width: 120),

            const SizedBox(height: 20),

            const Text(
              "Bienvenido",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Nuestra cafeteria ofrece los mejores cafes de la ciudad.",
                textAlign: TextAlign.center,
              ),
            ),

            Image.asset("assets/cafe.jpg", height: 200),

            const SizedBox(height: 20),

            ElevatedButton(
              child: const Text("Ver productos"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Productos()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
