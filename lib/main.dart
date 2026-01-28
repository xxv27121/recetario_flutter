import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const RecetarioApp());
}

class RecetarioApp extends StatelessWidget {
  const RecetarioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recetario',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
