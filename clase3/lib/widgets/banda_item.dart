import 'package:flutter/material.dart';
import 'package:login_app/entidades/banda.dart';

class BandaItem extends StatelessWidget {
  const BandaItem({
    super.key,
    required this.banda,
    this.onTap,
  });

  final Banda banda;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: banda.fotoPerfil != null
              ? _buildFotoPerfil(banda.fotoPerfil!)
              : const Icon(Icons.music_note),
        title: Text(banda.nombre),
        subtitle: Text('Género: ${banda.generoMusical}'),
        onTap: () => onTap?.call(),
      ),
    );
  }

  Widget _buildFotoPerfil(String fotoPerfil) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        fotoPerfil,
        width: 48,
        height: 48,
        fit: BoxFit.cover,
      ),
    );
  }
}