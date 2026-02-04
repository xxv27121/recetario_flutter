import 'package:flutter/material.dart';
import '../models/receta.dart';
import '../widgets/background_scaffold.dart';
import '../services/persistencia_service.dart';

/// Pantalla que muestra la receta
class DetalleRecetaScreen extends StatefulWidget {
  final Receta receta;

  const DetalleRecetaScreen({super.key, required this.receta});

  @override
  State<DetalleRecetaScreen> createState() => _DetalleRecetaScreenState();
}

class _DetalleRecetaScreenState extends State<DetalleRecetaScreen> {
  final TextEditingController _notasController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _notasController.text = widget.receta.notas;
  }

  List<_SeccionTexto> _parseSecciones(String texto) {
    final lines = texto.trim().split('\n');

    List<_SeccionTexto> secciones = [];
    _SeccionTexto? actual;

    for (var line in lines) {
      line = line.trim();
      if (line.isEmpty) continue;

      if (line.startsWith('[') && line.endsWith(']')) {
        actual = _SeccionTexto(
          titulo: line.substring(1, line.length - 1),
          lineas: [],
        );
        secciones.add(actual);
      } else {
        actual ??= _SeccionTexto(titulo: null, lineas: []);
        actual.lineas.add(line);
        if (!secciones.contains(actual)) {
          secciones.add(actual);
        }
      }
    }

    return secciones;
  }

  /// La vaina de la persistencia
  void _guardarEstado() {
    PersistenciaService.guardarReceta(widget.receta);
  }

  @override
  Widget build(BuildContext context) {
    final receta = widget.receta;

    final ingredientesSecciones = _parseSecciones(receta.ingredientes);
    final pasosSecciones = _parseSecciones(receta.pasos);

    return BackgroundScaffold(
      title: receta.nombre,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Imagen principal
          SizedBox(
            height: 250,
            child: Image.asset(
              receta.foto,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 16),

          // Tipo de receta
          Text(
            receta.tipo,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 10),

          // Guardar / quitar del recetario
          Row(
            children: [
              IconButton(
                icon: Icon(
                  receta.guardada ? Icons.bookmark : Icons.bookmark_border,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    receta.guardada = !receta.guardada;
                  });
                  _guardarEstado();
                },
              ),
              const Text(
                'Guardar en recetario',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),

          // Marcar como elaborada
          Row(
            children: [
              Checkbox(
                value: receta.elaborada,
                activeColor: Colors.white,
                checkColor: Colors.black,
                onChanged: (value) {
                  setState(() {
                    receta.elaborada = value ?? false;
                  });
                  _guardarEstado();
                },
              ),
              const Text(
                'Receta elaborada',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),


          // Puntuación de la receta
          Text(
            'Puntuación',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
          Row(
            children: List.generate(5, (index) {
              final estrella = index + 1;
              return IconButton(
                icon: Icon(
                  receta.puntuacion != null &&
                          receta.puntuacion! >= estrella
                      ? Icons.star
                      : Icons.star_border,
                  color: Colors.amber,
                ),
                onPressed: () {
                  setState(() {
                    receta.puntuacion = estrella;
                  });
                  _guardarEstado();
                },
              );
            }),
          ),

          const SizedBox(height: 20),

          // Ingredientes
          Text(
            'Ingredientes',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),

          ...ingredientesSecciones.map((sec) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (sec.titulo != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    sec.titulo!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
                ...sec.lineas.map(
                  (l) => Text(
                    '• $l',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          }),

          const SizedBox(height: 24),

          // Pasos de preparación
          Text(
            'Preparación',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),

          ...pasosSecciones.map((sec) {
            int contador = 1;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (sec.titulo != null) ...[
                  const SizedBox(height: 12),
                  Text(
                    sec.titulo!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                ],
                ...sec.lineas.map(
                  (p) => Text(
                    '${contador++}. $p',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          }),

          const SizedBox(height: 30),

          // Notas
          Text(
            'Notas del usuario',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white),
          ),
          TextField(
            controller: _notasController,
            maxLines: 3,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              hintText: 'Escribe tus notas aquí...',
              hintStyle: TextStyle(color: Colors.white70),
            ),
            onChanged: (value) {
              receta.notas = value;
              _guardarEstado();
            },
          ),
        ],
      ),
    );
  }
}

class _SeccionTexto {
  final String? titulo;
  final List<String> lineas;

  _SeccionTexto({this.titulo, required this.lineas});
}
