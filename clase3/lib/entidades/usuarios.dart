class Usuario {
  final String username;
  final String password;

  Usuario({required this.username, required this.password});
}


final List<Usuario> usuarios = [
  Usuario(username: 'Jhon Doe', password: 'Jhon123'),
  Usuario(username: 'test2', password: 'test123'),
  Usuario(username: 'test3', password: 'test133'),
];

Usuario? validarUsuario(String username, String password) {
  for (var usuario in usuarios) {
    if (usuario.username == username && usuario.password == password) {
      return usuario;
    }
  }
  return null;
}