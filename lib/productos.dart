import 'package:flutter/material.dart';

class Productos extends StatelessWidget {
  const Productos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Productos"),
      ),

      body: ListView(
        children: const[
          ListTile(
            leading: Icon(Icons.local_cafe),
            title: Text("Cafe Americano"),
            subtitle: Text("S/.8.00"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.coffee),
            title: Text("Capuccino"),
            subtitle: Text("S/.10.00"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.coffee_maker),
            title: Text("Latte"),
            subtitle: Text("S/.12.00"),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.emoji_food_beverage),
            title: Text("Chocolate"),
            subtitle: Text("S/.9.00"),
          ),
        ],
      ),
    );
  }
}
