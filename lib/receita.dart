class Receita {

  // field
  int id;
  String medicamento;
  String qtd_desc;
  String uso;
  String via;
  String quantidadeASerTomada;
  String frequencia;
  String tempo;
  String tempoNumero;


  Receita({this.id, this.medicamento, this.qtd_desc, this.uso, this.via,
      this.quantidadeASerTomada, this.frequencia, this.tempoNumero, this.tempo});

  factory Receita.fromJson(Map<String, dynamic> json) {
    return Receita(
        id: json["id"],
        medicamento: json["medicamento"],
        qtd_desc: json["qtd_desc"],
        uso: json["uso"],
        via: json["via"],
        quantidadeASerTomada: json["quantidadeASerTomada"],
        frequencia: json["frequencia"],
        tempo: json["tempo"],
        tempoNumero: json["tempoNumero"],


    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'medicamento': medicamento,
      'qtd_desc': qtd_desc,
      'uso': uso,
      'via': via,
      'quantidadeASerTomada': quantidadeASerTomada,
      'frequencia': frequencia,
      'tempo': tempo,
      'tempoNumero': tempoNumero,

    };


  }


}