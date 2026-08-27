import 'package:flutter/material.dart';
import 'package:login_app/entidades/banda.dart';
import 'package:login_app/core/data/banda_datasource.dart';

class DetalleBandaScreen extends StatelessWidget {
  final int bandaId;
  static const String name = 'detalleBanda';

  const DetalleBandaScreen({super.key, required this.bandaId});

  @override
  Widget build(BuildContext context) {
    final banda = getBandas().firstWhere((b) => b.id == bandaId);
    return Scaffold(
      appBar: AppBar(
        title: Text('Info de ${banda.nombre}'),
      ),
      body: _DetalleBandaView(banda: banda),
    );
  }
}

class _DetalleBandaView extends StatelessWidget {
  final Banda banda;

  const _DetalleBandaView({super.key, required this.banda});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Género: ${banda.generoMusical}'),
        Text('Año de Formación: ${banda.anioFormacion}'),
        Text('Cantidad de Integrantes: ${banda.cantidadIntegrantes}'),
      ],
    );
  }
}