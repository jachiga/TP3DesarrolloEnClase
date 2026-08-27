import 'album.dart';

class Banda {
  final int id;
  final String nombre;
  final int cantidadIntegrantes;
  final String generoMusical;
  final List<Album> albumes;
  final int anioFormacion;
  final String? fotoPerfil;

  Banda({
  required this.id,
  required this.nombre,
  required this.cantidadIntegrantes,
  required this.generoMusical,
  required this.albumes,
  required this.anioFormacion,
  this.fotoPerfil,
});
}

