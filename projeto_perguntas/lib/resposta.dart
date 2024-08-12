import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {

    final String texto;

    final void Function() quandoSelecionado;

    const Resposta(this.texto, this.quandoSelecionado);

    @override
    Widget build(BuildContext context) {
        return Container(
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, // foreground (text) color
                    backgroundColor: Colors.blue, // background color
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                    ),
                ),
                onPressed: quandoSelecionado,
                child: Text(texto),
            ),
        );
    }
}