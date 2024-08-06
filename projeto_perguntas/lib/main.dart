import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
    
    var perguntaSelecionada = 0;

    void responder() {
        perguntaSelecionada++;
        print(perguntaSelecionada);
    }

    @override
    Widget build(BuildContext context) {
        final List<String> perguntas = [
            'Qual é a sua cor favorita?',
            'Qual e o seu animal favorito?'
        ];

        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: Text('Perguntas'),
                ),
                body: Column(
                    children: <Widget>[
                        Text(perguntas[perguntaSelecionada]),
                        ElevatedButton(
                            child: Text('Resposta 1'),
                            onPressed: responder
                        ),
                        ElevatedButton(
                            child: Text('Resposta 2'),
                            onPressed: () {
                                print('Resposta 2 selecionada');
                            }
                        ),
                        ElevatedButton(
                            child: Text('Resposta 3'),
                            onPressed: () => print('Resposta 3')
                        ),
                    ],
                ),
            )
        );
    }
}