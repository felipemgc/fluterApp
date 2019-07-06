import 'package:flutter/material.dart';
import 'segunda_tela.dart';

class myWidget extends StatefulWidget {
  @override
  _myWidgetState createState() => _myWidgetState();
}

class _myWidgetState extends State<myWidget> {
  @override
  Widget build(BuildContext context) {
    final _textEditNameController = TextEditingController();
    final _textEditAlturaController = TextEditingController();
    final _textEditPesoController = TextEditingController();


    return Scaffold(
      appBar: AppBar(
        title: Text("topo"),
      ),
      body: Center(

        child: Column(
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.network("https://www.tisaude.com/images/logo2.png", width: 100)),
              Text("Nome:", style: TextStyle(color: Colors.red),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                          controller: _textEditNameController,
                ),
              ),
              Text("Altura:"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _textEditAlturaController,
                    keyboardType: TextInputType.number,
                ),
              ),
              Text("Peso:"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    controller: _textEditPesoController,
                     keyboardType: TextInputType.number,

                ),
              ),
              RaisedButton(
                onPressed: () {
                 // _textEditNameController.text = ( assert(_textEditPesoController.text is double) / ( assert(_textEditAlturaController.text is double)*2)) ;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => segundaTela(nome:_textEditNameController.text,
                                                                        altura: _textEditAlturaController.text ,
                                                                        peso: _textEditPesoController.text,)),
                  );
                },
                child: Text(
                    'IMC',
                    style: TextStyle(fontSize: 20)
                )
              )

            ]
        ),
      ),
    );
  }


}
