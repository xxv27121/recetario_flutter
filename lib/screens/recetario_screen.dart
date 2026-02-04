import 'package:flutter/material.dart';
import '../services/recetas_prueba.dart';
import '../screens/detalle_receta_screen.dart';
import '../screens/tipos_screen.dart';
import '../widgets/background_scaffold.dart';

/// Pantalla que muestra el recetario personal del usuario.
class RecetarioScreen extends StatefulWidget {
  const RecetarioScreen({super.key});

  @override
  State<RecetarioScreen> createState() => _RecetarioScreenState();
}

class _RecetarioScreenState extends State<RecetarioScreen> {
  /// Tipo de receta seleccionado
  String? tipoSeleccionado;

  @override
  Widget build(BuildContext context) {
    // Lista de recetas guardadas
    final recetasGuardadas =
        recetasPrueba.where((r) => r.guardada).toList();

    // Tipos de las recetas guardadas
    final tipos =
        recetasGuardadas.map((r) => r.tipo).toSet().toList();

    // Recetas filtradas por tipo
    final recetasFiltradas = tipoSeleccionado == null
        ? []
        : recetasGuardadas
            .where((r) => r.tipo == tipoSeleccionado)
            .toList();

    // No hay recetas guardadas!!!
    if (recetasGuardadas.isEmpty) {
      return const Scaffold(
        body: Center(
          child: Text('No has guardado ninguna receta'),
        ),
      );
    }

    // Vista de tipos
    if (tipoSeleccionado == null) {
      return BackgroundScaffold(
        title: 'Mi recetario',
        child: TiposScreen(
          tipos: tipos,
          onTipoSeleccionado: (tipo) {
            setState(() {
              tipoSeleccionado = tipo;
            });
          },
        ),
      );
    }

    // Vista de recetas de un tipo
    return BackgroundScaffold(
      title: tipoSeleccionado!,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: recetasFiltradas.length,
        itemBuilder: (context, index) {
          final receta = recetasFiltradas[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              // Imagen de la receta
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  receta.foto,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),

              // Información básica
              title: Text(receta.nombre),
              subtitle: Text(receta.tipo),

              // Quitar la receta del recetario
              trailing: IconButton(
                icon: const Icon(Icons.bookmark),
                onPressed: () {
                  setState(() {
                    receta.guardada = false;
                  });
                },
              ),

              // Detalle de la receta
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetalleRecetaScreen(receta: receta),
                  ),
                ).then((_) {
                  setState(() {});
                });
              },
            ),
          );
        },
      ),
    );
  }
}
