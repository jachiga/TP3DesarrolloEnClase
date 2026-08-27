import 'package:login_app/entidades/banda.dart';

final List<Banda> ListaBandas = [
  Banda(
    id: 1,
    nombre: 'Banda 1',
    cantidadIntegrantes: 4,
    generoMusical: 'Rock',
    albumes: [],
    anioFormacion: 2000,
    fotoPerfil: null,
  ),
  Banda(
    id: 2,
    nombre: 'Banda 2',
    cantidadIntegrantes: 5,
    generoMusical: 'Pop',
    albumes: [],
    anioFormacion: 2005,
    fotoPerfil: null,
  ),
];

List<Banda> getBandas() {
  return ListaBandas;
}