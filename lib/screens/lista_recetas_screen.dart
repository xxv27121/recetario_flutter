import 'package:flutter/material.dart';
import '../services/recetas_prueba.dart';

class ListaRecetasScreen extends StatelessWidget {
  const ListaRecetasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recetas'),
      ),
      body: ListView.builder(
        itemCount: recetasPrueba.length,
        itemBuilder: (context, index) {
          final receta = recetasPrueba[index];

          return ListTile(
            title: Text(receta.nombre),
            subtitle: Text(receta.tipo),
            trailing: Icon(
              receta.guardada ? Icons.bookmark : Icons.bookmark_border,
            ),
          );
        },
      ),
    );
  }
}
