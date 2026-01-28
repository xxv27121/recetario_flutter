import 'package:flutter/material.dart';
import '../services/recetas_prueba.dart';
import 'detalle_receta_screen.dart';
import '../widgets/background_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sugerencias = recetasPrueba.take(3).toList();

    return BackgroundScaffold(
      title: 'Sugerencias de la semana',
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: sugerencias.length,
        itemBuilder: (context, index) {
          final receta = sugerencias[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 16),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset(
                  receta.foto,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                ListTile(
                  title: Text(receta.nombre),
                  subtitle: Text(receta.tipo),
                  trailing: const Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetalleRecetaScreen(receta: receta),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
