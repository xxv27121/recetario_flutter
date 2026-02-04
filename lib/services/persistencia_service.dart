import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/receta.dart';

class PersistenciaService {
  static const String _claveDatos = 'datos_recetas';

  /// Guarda el estado de una receta concreta
  static Future<void> guardarReceta(Receta receta) async {
    final prefs = await SharedPreferences.getInstance();
    final datos = await _cargarMapa();

    datos[receta.id.toString()] = {
      'guardada': receta.guardada,
      'elaborada': receta.elaborada,
      'notas': receta.notas,
      'puntuacion': receta.puntuacion,
    };

    await prefs.setString(_claveDatos, jsonEncode(datos));
  }

  /// Carga los datos y los aplica a la lista de recetas
  static Future<void> cargarDatos(List<Receta> recetas) async {
    final datos = await _cargarMapa();

    for (final receta in recetas) {
      final guardado = datos[receta.id.toString()];
      if (guardado != null) {
        receta.guardada = guardado['guardada'] ?? false;
        receta.elaborada = guardado['elaborada'] ?? false;
        receta.notas = guardado['notas'] ?? '';
        receta.puntuacion = guardado['puntuacion'];
      }
    }
  }

  /// Lee el mapa, sea lo que sea eso (comprobar en casa)
  static Future<Map<String, dynamic>> _cargarMapa() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_claveDatos);
    if (jsonString == null) return {};
    return jsonDecode(jsonString);
  }
}
