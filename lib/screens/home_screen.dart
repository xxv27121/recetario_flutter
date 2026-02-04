import 'package:flutter/material.dart';
import '../screens/detalle_receta_screen.dart';
import '../services/recetas_prueba.dart';
import '../widgets/background_scaffold.dart';

/// Pantalla principal de la aplicación
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Selección de tres recetas como sugerencias
    final idsSugerencias = [2, 5, 9];

    final sugerencias = recetasPrueba
        .where((r) => idsSugerencias.contains(r.id))
        .toList();


    return BackgroundScaffold(
      title: 'Recetario',
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 8),

          // Sección de sugerencias
          const Text(
            'Sugerencias de la semana',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 16),

          // Lista vertical de sugerencias
          ...sugerencias.map((receta) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetalleRecetaScreen(receta: receta),
                  ),
                );
              },
              child: Card(
                margin: const EdgeInsets.only(bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Imagen de la receta
                    SizedBox(
                      height: 180,
                      width: double.infinity,
                      child: Image.asset(
                        receta.foto,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // Nombre de la receta
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        receta.nombre,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
