class Authenticat {
  final String usuario;
  final String senha;

  Authenticat({ this.usuario, this.senha });

  factory Authenticat.fromJson(Map<String, dynamic> json) {
    return Authenticat(
      usuario: json['usuario'] as String,
      senha: json['senha'] as String
    );
  }

  @override
  String toString() {
    return 'Trans{usuario: $usuario, senha: $senha}';
  }
}