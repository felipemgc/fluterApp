import 'package:flutter/material.dart';
import 'listPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cadastro de medicamentos",
     theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ListPage(),
    );
  }
}


