import 'package:flutter/material.dart';
import 'screens/lista_recetas_screen.dart';

void main() {
  runApp(const RecetasApp());
}

class RecetasApp extends StatelessWidget {
  const RecetasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recetas de Cocina',
      home: const ListaRecetasScreen(),
    );
  }
}
