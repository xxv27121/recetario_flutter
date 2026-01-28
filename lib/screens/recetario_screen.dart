import 'package:flutter/material.dart';
import '../services/recetas_prueba.dart';
import 'detalle_receta_screen.dart';
import 'tipos_screen.dart';
import '../widgets/background_scaffold.dart';

class RecetarioScreen extends StatefulWidget {
  const RecetarioScreen({super.key});

  @override
  State<RecetarioScreen> createState() => _RecetarioScreenState();
}

class _RecetarioScreenState extends State<RecetarioScreen> {
  String? tipoSeleccionado;

  @override
  Widget build(BuildContext context) {
    final guardadas = recetasPrueba.where((r) => r.guardada).toList();
    final tipos = guardadas.map((r) => r.tipo).toSet().toList();
    final recetas = tipoSeleccionado == null
        ? []
        : guardadas.where((r) => r.tipo == tipoSeleccionado).toList();

    if (guardadas.isEmpty) {
      return const Scaffold(
        body: Center(child: Text('No has guardado ninguna receta')),
      );
    }

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

    return BackgroundScaffold(
      title: tipoSeleccionado!,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: recetas.length,
        itemBuilder: (context, index) {
          final receta = recetas[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  receta.foto,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
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
          );
        },
      ),
    );
  }
}
