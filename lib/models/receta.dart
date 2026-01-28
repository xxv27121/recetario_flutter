class Receta {
  final int id;
  final String nombre;
  final String tipo;
  final String ingredientes; // texto multilinea
  final String pasos;         // texto multilinea con secciones
  final String foto;

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
