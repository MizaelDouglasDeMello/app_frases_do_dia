
import 'dart:math';

import 'package:flutter/material.dart';

class FraseDoDiaPage extends StatefulWidget {
  const FraseDoDiaPage({super.key});

  @override
  State<FraseDoDiaPage> createState() => _FraseDoDiaPageState();
}

class _FraseDoDiaPageState extends State<FraseDoDiaPage> {
  final List<String> _frases = [
    "Acredite em você mesmo e tudo será possível.",
    "O sucesso é a soma de pequenos esforços diários.",
    "Nunca é tarde para ser quem você deseja ser.",
    "A felicidade vem das ações, não das circunstâncias.",
    "Seja a mudança que você quer ver no mundo.",
    "Persistência é o caminho do êxito.",
    "A simplicidade é a essência da felicidade."
  ];

  String _fraseAtual = "Clique no botão para ver uma frase do dia!";


  void _gerarNovaFrase(){
    final randomIndex = Random().nextInt(_frases.length);
    setState(() {
      _fraseAtual = _frases[randomIndex];
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Frase do Dia", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _fraseAtual,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _gerarNovaFrase,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                child: const Text("Nova Frase",  style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
