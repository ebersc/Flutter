import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  const Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //usando o tamanho maximo do double
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28), //Tamanho do texto
        textAlign: TextAlign.center, //Alinhamento do texto
      ),
    );
  }
}
