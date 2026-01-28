import 'package:flutter/material.dart';

class TiposScreen extends StatelessWidget {
  final List<String> tipos;
  final void Function(String tipo) onTipoSeleccionado;

  const TiposScreen({
    super.key,
    required this.tipos,
    required this.onTipoSeleccionado,
  });

  String imagenParaTipo(String tipo) {
    final t = tipo.toLowerCase();

    if (t.contains('plato')) return 'assets/images/tipo_plato.jpg';
    if (t.contains('ensalada')) return 'assets/images/tipo_ensalada.jpg';
    if (t.contains('postre')) return 'assets/images/tipo_postre.jpg';
    if (t.contains('crema')) return 'assets/images/tipo_crema.jpg';

    return 'assets/images/tipo_plato.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: tipos.length,
      itemBuilder: (context, index) {
        final tipo = tipos[index];

        return GestureDetector(
          onTap: () => onTipoSeleccionado(tipo),
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  imagenParaTipo(tipo),
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                Center(
                  child: Text(
                    tipo,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(color: Colors.black, blurRadius: 10)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
