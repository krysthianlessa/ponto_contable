class UsuarioModel {
  String nome;
  String matricula;

  UsuarioModel({
    this.nome,
    this.matricula,
  });

  UsuarioModel fromJson(Map<String, dynamic> json) {
    if (json != null) {
      //this.key = json['key'];
      this.nome = json['nome'];
      this.matricula = json['matricula'];

      return this;
    }
    return null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    //data['key'] = this.key;
    data['nome'] = this.nome;
    data['matricula'] = this.matricula;
    return data;
  }
}
