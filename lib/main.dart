import 'package:contador/constantes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _titulo = "Contador";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _titulo,
      home: TelaHome(),
    );
  }
}

class TelaHome extends StatefulWidget {
  const TelaHome({Key? key}) : super(key: key);

  @override
  _TelaHomeState createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  @override
  Widget build(BuildContext context) {
    final double altura = MediaQuery.of(context).size.height;
    final double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: altura,
        width: largura,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: Cores.linear,
              begin: Alignment.center,
              end: Alignment.bottomCenter),
          image: const DecorationImage(
              alignment: Alignment.topLeft,
              image: AssetImage("assets/image/ellipse.png")),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Pode entrar!"),
            const Text("00"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Sair"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Entrar"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
