import 'package:shared_preferences/shared_preferences.dart';
import '../models/receta.dart';

class PersistenciaService {
  static const String _guardadasKey = 'recetas_guardadas';
  static const String _elaboradasKey = 'recetas_elaboradas';
  static const String _puntuacionesKey = 'recetas_puntuaciones';
  static const String _notasKey = 'recetas_notas';

  /// Guarda el estado actual
  static Future<void> guardarEstado(List<Receta> recetas) async {
    final prefs = await SharedPreferences.getInstance();

    // Recetas guardadas
    prefs.setStringList(
      _guardadasKey,
      recetas
          .where((r) => r.guardada)
          .map((r) => r.id.toString())
          .toList(),
    );

    // Elaboradas
    prefs.setStringList(
      _elaboradasKey,
      recetas
          .where((r) => r.elaborada)
          .map((r) => r.id.toString())
          .toList(),
    );

    // Puntuacion
    final puntuaciones = <String>[];
    for (var r in recetas) {
      if (r.puntuacion != null) {
        puntuaciones.add('${r.id}:${r.puntuacion}');
      }
    }
    prefs.setStringList(_puntuacionesKey, puntuaciones);

    // Notas del usuario
    final notas = <String>[];
    for (var r in recetas) {
      if (r.notas.isNotEmpty) {
        notas.add('${r.id}:${r.notas}');
      }
    }
    prefs.setStringList(_notasKey, notas);
  }

  /// Carga el estado guardado
  static Future<void> cargarEstado(List<Receta> recetas) async {
    final prefs = await SharedPreferences.getInstance();

    final guardadas = prefs.getStringList(_guardadasKey) ?? [];
    final elaboradas = prefs.getStringList(_elaboradasKey) ?? [];
    final puntuaciones = prefs.getStringList(_puntuacionesKey) ?? [];
    final notas = prefs.getStringList(_notasKey) ?? [];

    for (var r in recetas) {
      r.guardada = guardadas.contains(r.id.toString());
      r.elaborada = elaboradas.contains(r.id.toString());

      // Recuperar puntuación
      final p = puntuaciones.firstWhere(
        (e) => e.startsWith('${r.id}:'),
        orElse: () => '',
      );
      if (p.isNotEmpty) {
        r.puntuacion = int.tryParse(p.split(':')[1]);
      }

      // Recuperar notas
      final n = notas.firstWhere(
        (e) => e.startsWith('${r.id}:'),
        orElse: () => '',
      );
      if (n.isNotEmpty) {
        r.notas = n.substring(n.indexOf(':') + 1);
      }
    }
  }
}
