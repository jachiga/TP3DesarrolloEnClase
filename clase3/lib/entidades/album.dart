class Album {
  final String nombre;
  final int anioLanzamiento;
  final int cantidadCanciones;
  final String generoMusical;
  final String? fotoPortada;

  Album({
    required this.nombre,
    required this.anioLanzamiento,
    required this.cantidadCanciones,
    required this.generoMusical,
    this.fotoPortada,
  });
}
