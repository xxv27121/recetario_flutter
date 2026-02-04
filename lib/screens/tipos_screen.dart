import 'package:flutter/material.dart';
import '../services/recetas_prueba.dart';
import '../services/tipos_prueba.dart';
import '../widgets/background_scaffold.dart';
import 'lista_recetas_screen.dart';
import '../models/tipo_receta.dart';

class TiposScreen extends StatelessWidget {
  const TiposScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tiposUsados = recetasPrueba.map((r) => r.tipo).toSet().toList();

    return BackgroundScaffold(
      title: 'Recetas',
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tiposUsados.length,
        itemBuilder: (context, index) {
          final tipo = tiposUsados[index];

          final tipoReceta = tiposReceta.firstWhere(
            (t) => t.nombre == tipo,
            orElse: () => TipoReceta(
              nombre: tipo,
              imagen: 'assets/images/tipo_plato.jpg',
            ),
          );

          return GestureDetector(
            onTap: () {
              final recetasDelTipo =
                  recetasPrueba.where((r) => r.tipo == tipo).toList();

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ListaRecetasScreen(
                    tipo: tipo,
                    recetas: recetasDelTipo,
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(tipoReceta.imagen),
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
