class Receta {
  int id;
  String nombre;
  String tipo; // postre, carne, ensalada...
  String ingredientes;
  String pasos; // instrucciones de elaboracion

  bool guardada;      // el usuario la guarda en su recetario
  bool elaborada;     // ya la ha hecho
  String notas;       // notas del usuario
  int? puntuacion;    // null = no ha votado, 1–5 = votada

  Receta({
    required this.id,
    required this.nombre,
    required this.tipo,
    required this.ingredientes,
    required this.pasos,
    this.guardada = false,
    this.elaborada = false,
    this.notas = '',
    this.puntuacion,
  });
}
