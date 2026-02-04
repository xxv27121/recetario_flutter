/// Atributos de cada receta
class Receta {
  final int id;
  final String nombre;
  final String tipo;
  final String ingredientes;
  final String pasos;
  final String foto;

  // Datos que puede manipular el usuario
  bool guardada;
  bool elaborada;
  String notas;
  int? puntuacion;

  Receta({
    required this.id,
    required this.nombre,
    required this.tipo,
    required this.ingredientes,
    required this.pasos,
    required this.foto,
    this.guardada = false,
    this.elaborada = false,
    this.notas = '',
    this.puntuacion,
  });
}
