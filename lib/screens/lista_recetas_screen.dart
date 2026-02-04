import 'package:flutter/material.dart';
import '../models/receta.dart';
import '../screens/detalle_receta_screen.dart';
import '../widgets/background_scaffold.dart';

/// Pantalla que muestra la lista de recetas de un tipo
class ListaRecetasScreen extends StatefulWidget {
  final String tipo;
  final List<Receta> recetas;

  const ListaRecetasScreen({
    super.key,
    required this.tipo,
    required this.recetas,
  });

  @override
  State<ListaRecetasScreen> createState() => _ListaRecetasScreenState();
}

class _ListaRecetasScreenState extends State<ListaRecetasScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundScaffold(
      title: widget.tipo,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: widget.recetas.length,
        itemBuilder: (context, index) {
          final receta = widget.recetas[index];

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

              // Botón para guardar o quitar del recetario
              trailing: IconButton(
                icon: Icon(
                  receta.guardada
                      ? Icons.bookmark
                      : Icons.bookmark_border,
                ),
                onPressed: () {
                  setState(() {
                    receta.guardada = !receta.guardada;
                  });
                },
              ),

              // Acceso al detalle de la receta
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
