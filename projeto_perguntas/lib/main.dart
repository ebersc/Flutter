import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
    var _perguntaSelecionada = 0;

    void _responder() {
        setState(() {
            _perguntaSelecionada++;
        });
        print(_perguntaSelecionada);
    }

    @override
    Widget build(BuildContext context) {
        final List<Map<String, Object>> perguntas = [
            {
                'texto' : 'Qual é a sua cor favorita?',
                'respostas' : ['Preto', 'Vermelho', 'Verde', 'Branco'],
            },
            {
                'texto' : 'Qual é o seu animal favorito?',
                'respostas' : ['Coelho', 'Cobra', 'Elefante', 'Leão'],
            },
            {
                'texto' : 'Qual o seu instrutor favorito?',
                'respostas' : ['Maria', 'João', 'Leo', 'Pedro'],
            }
        ];

        List<String> respostas = perguntas[_perguntaSelecionada].cast()['respostas'];
        List<Widget> widgets = respostas.map((t) => Resposta(t, _responder)).toList();

        return MaterialApp(
            home: Scaffold(
                appBar: AppBar(
                    title: const Text('Perguntas'),
                ),
                body: Column(
                    children: [
                        Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
                        ...widgets,
                    ],
                ),
            ),
        );
    }
}

class PerguntaApp extends StatefulWidget {
    const PerguntaApp({super.key});

    @override
    _PerguntaAppState createState() {
        return _PerguntaAppState();
    }
}