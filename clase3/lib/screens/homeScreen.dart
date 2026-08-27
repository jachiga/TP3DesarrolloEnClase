import 'package:flutter/material.dart';
import 'package:login_app/entidades/usuarios.dart';
import 'package:login_app/core/data/banda_datasource.dart';
import 'package:login_app/widgets/banda_item.dart';
import '../entidades/banda.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home';
  final Usuario userName;
  final List<Banda> bandas = getBandas();
  HomeScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galería de Bandas'),
      ),
      body: const _vistaBandas(),
    );
  }
}

class _vistaBandas extends StatelessWidget {
    const _vistaBandas({super.key});

    @override
    Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: getBandas().length,
        itemBuilder: (context, index) {
          final banda = getBandas()[index];
          return BandaItem(
            banda: banda,
            onTap: () => Navigator.pushNamed(
              context,
              '/detalleBanda/${banda.id}',
            ),
          );
        },
      );
    }
  }