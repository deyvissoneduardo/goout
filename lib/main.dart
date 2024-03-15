import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sim ou Não',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SimOuNaoPage(),
    );
  }
}

class SimOuNaoPage extends StatefulWidget {
  const SimOuNaoPage({super.key});

  @override
  SimOuNaoPageState createState() => SimOuNaoPageState();
}

class SimOuNaoPageState extends State<SimOuNaoPage> {
  double naoButtonX = 0;
  double naoButtonY = 0;
  final Random random = Random();

  void _mostrarMensagemSucesso() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text('Que perfeito te busco as 21.00 ❤️'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('CONFIRMADO'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Vamos sair hoje ?',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _mostrarMensagemSucesso();
                  },
                  child: const Text('Não'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    _mostrarMensagemSucesso();
                  },
                  child: const Text('Sim'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
