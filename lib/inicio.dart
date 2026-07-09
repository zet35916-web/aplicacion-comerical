import 'package:flutter/material.dart';
import 'productos.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final ancho = size.width;
    final alto = size.height;

    return Scaffold(
      appBar: AppBar(title: const Text("Cafeteria Flutter"), centerTitle: true),

      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),

              Image.asset("assets/logo.png", width: ancho * 0.30),

              const SizedBox(height: 20),

              Text(
                "Bienvenido",
                style: TextStyle(fontSize: ancho * 0.07, fontWeight: FontWeight.bold),
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ancho * 0.05,
                  ),
                child: Text(
                  "Nuestra cafeteria ofrece los mejores cafes de la ciudad.",
                  textAlign: TextAlign.center,
                ),
              ),

              Image.asset("assets/cafe.jpg", height: alto*0.25,width: ancho * 0.90,fit: BoxFit.cover),

              const SizedBox(height: 20),

              SizedBox(
                width: ancho * 0.80,
                child:ElevatedButton(
                child: const Text("Ver productos"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Productos()),
                  );
                },
              ),
              )

              
            ],
          ),
        ),
      ),
    );
  }
}
