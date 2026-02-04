import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'services/recetas_prueba.dart';
import 'services/persistencia_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Cargar datos antes de arrancar la app
  await PersistenciaService.cargarEstado(recetasPrueba);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
