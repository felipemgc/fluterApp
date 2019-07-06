import 'package:flutter/material.dart';
import 'my_widget.dart';

class segundaTela extends StatelessWidget {
  final nome;
  final altura;
  final peso;

  const segundaTela({Key key, this.nome, this.altura, this.peso});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("segunda tela")),
        body: Center(

            child: Column(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.network(
                          "https://www.tisaude.com/images/logo2.png",
                          width: 100)),
                  RaisedButton(
                      onPressed: () {
                        // _textEditNameController.text = ( assert(_textEditPesoController.text is double) / ( assert(_textEditAlturaController.text is double)*2)) ;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => myWidget()),
                        );
                      },
                      child: Text(
                          this.nome + " / " + this.altura + " / " + this.peso,
                          style: TextStyle(fontSize: 20)
                      )
                  )
                ]
            )
        )
    );
  }
}