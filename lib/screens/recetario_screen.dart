import 'package:flutter/material.dart';
import '../services/recetas_prueba.dart';
import 'lista_recetas_screen.dart';
import '../widgets/background_scaffold.dart';

class RecetarioScreen extends StatelessWidget {
  const RecetarioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recetasGuardadas =
        recetasPrueba.where((r) => r.guardada).toList();

    if (recetasGuardadas.isEmpty) {
      return const BackgroundScaffold(
        title: 'Mi recetario',
        child: Center(
          child: Text(
            'No has guardado ninguna receta',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }

    final tipos =
        recetasGuardadas.map((r) => r.tipo).toSet().toList();

    final Map<String, String> imagenesTipos = {
      'Plato principal': 'assets/images/tipo_plato.jpg',
      'Pasta': 'assets/images/tipo_pasta.jpg',
      'Postre': 'assets/images/tipo_postre.jpg',
      'Ensalada': 'assets/images/tipo_ensalada.jpg',
    };

    return BackgroundScaffold(
      title: 'Mi recetario',
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tipos.length,
        itemBuilder: (context, index) {
          final tipo = tipos[index];
          final recetasDelTipo =
              recetasGuardadas.where((r) => r.tipo == tipo).toList();

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListaRecetasScreen(
                    tipo: tipo,
                    recetas: recetasDelTipo,
                  ),
                ),
              );
            },
            child: Container(
              height: 140,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(
                    imagenesTipos[tipo] ?? 'assets/images/tipo_plato.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.center,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                color: Colors.black54,
                child: Text(
                  tipo,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
