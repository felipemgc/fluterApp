import 'package:flutter/material.dart';
import 'package:flutter_app/receita.dart';
import 'package:flutter_app/receitaDAO.dart';





class DetailPage extends StatefulWidget {
  Receita receita;

  DetailPage({this.receita});

  @override
  _DetailPageState createState() => _DetailPageState();
}


class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {

//    String uso = "";
//    String via = "";
//    String frequencia = "";
//    String tempo = "";

    final _controller_medicamento = TextEditingController(text: widget.receita?.medicamento);
    final _controller_qtd_desc = TextEditingController(text: widget.receita?.qtd_desc);
    final _controller_quantidadeASerTomada = TextEditingController(text: widget.receita?.quantidadeASerTomada);
    final _controller_tempoNumero = TextEditingController(text: widget.receita?.tempoNumero);



    return Scaffold(
      appBar: AppBar(
        title: Text("Medicação"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child:  TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Nome da medicação'
              ),
              controller: _controller_medicamento,
            ),
          ),

          Text("Quantidade:"),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child:  TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ex:. 1 caixa'
              ),
              controller: _controller_qtd_desc,
            ),
          ),
//          Row(
//          children: <Widget>[
//
//          Column(
//            children: <Widget>[
//            Text("Uso:"),
//            Padding(
//              padding: const EdgeInsets.all(20.0),
//              child:
//              DropdownButton<String>(
//
//                value: uso,
//                onChanged: (String newValue) {
//
//                  setState(() {
//                    uso = newValue;
//                  });
//                },
//                items: <String>['','Interno','Externo','Parenteral','Tópico','Subcutâneo','Vaginal','Otológico','Nasal','Inalatório','Dermatológico','Ocular','Outro']
//                    .map<DropdownMenuItem<String>>((String value) {
//                  return DropdownMenuItem<String>(
//                    value: value,
//                    child: Text(value),
//                  );
//                }).toList(),
//              )
//            ),
//            ]
//          ),
//              Column(
//          children: <Widget>[
//          Text("Via:"),
//          Padding(
//              padding: const EdgeInsets.all(20.0),
//              child:
//              DropdownButton<String>(
//                value: via,
//                onChanged: (String newValue) {
//                  setState(() {
//                    via = newValue;
//                  });
//                },
//                items: <String>['','Oral','Intramuscular','Via Subcutânea','Intravenosa', 'Tópica','Outro']
//                    .map<DropdownMenuItem<String>>((String value) {
//                  return DropdownMenuItem<String>(
//                    value: value,
//                    child: Text(value),
//                  );
//                }).toList(),
//              )
//          ),
//        ]
//      )
//          ]
//
//          ),
          Text("Posologia:"),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child:  TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Ex.: 1 comprimido de 8 em 8 horas.'
              ),
              controller: _controller_quantidadeASerTomada,
            ),
          ),

//          Text("Frequência:"),
//          Padding(
//            padding: const EdgeInsets.all(4.0),
//            child:
//            DropdownButton<String>(
//              isExpanded: true,
//              value: frequencia,
//              onChanged: (String newValue) {
//                setState(() {
//                  frequencia = newValue;
//                });
//              },
//              items: <String>['','1 Vez ao dia (Manhã)', '1 Vez ao dia (Noite)', '1 Vez no Almoço', '2 Vezes ao dia', '3 Vezes ao dia', 'A cada 12 horas', 'A cada 8 horas','A cada 6 horas', 'A cada 4 horas']
//                  .map<DropdownMenuItem<String>>((String value) {
//              return DropdownMenuItem<String>(
//                value: value,
//                child: Text(value),
//              );
//              }).toList(),
//            )
//          ),
          Text("Durante:"),
          Row(
            children: <Widget>[

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Ex.: 5 dias'
                    ),
                    controller: _controller_tempoNumero,
                  ),
                ),
              ),


//              Expanded(
//                child: Padding(
//                  padding: const EdgeInsets.all(10.0),
//                  child:DropdownButton<String>(
//                  value: tempo,
//                  onChanged: (String newValue) {
//                    setState(() {
//                      tempo = newValue;
//                    });
//                  },
//                  items: <String>['','Dias', 'Doses', 'Uso Contínuo', 'Outro']
//                      .map<DropdownMenuItem<String>>((String value) {
//                    return DropdownMenuItem<String>(
//                      value: value,
//                      child: Text(value),
//                    );
//                  }).toList(),
//                )),
//              ),
            ]
          ),








          RaisedButton(
            onPressed: () {

              print(widget.receita);
              if(widget.receita == null){

                widget.receita = Receita(medicamento: _controller_medicamento.text,
                                          qtd_desc: _controller_qtd_desc.text,
                                          uso: null,
                                          via: null,
                                          quantidadeASerTomada: _controller_quantidadeASerTomada.text,
                                          frequencia: null,
                                          tempoNumero: _controller_tempoNumero.text,
                                          tempo: null
                                         );
              }else{
                widget.receita.medicamento = _controller_medicamento.text;
                widget.receita.qtd_desc = _controller_qtd_desc.text;
                widget.receita.uso = null;
                widget.receita.via = null;
                widget.receita.quantidadeASerTomada = _controller_quantidadeASerTomada.text;
                widget.receita.frequencia = null;
                widget.receita.tempoNumero = _controller_tempoNumero.text;
                widget.receita.tempo = null;
              }
              ReceitaDAO().insert(receita: widget.receita);
            },
            child: Text("Save"),
          )
        ],
      ),
    );
  }
}
