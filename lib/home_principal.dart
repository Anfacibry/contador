import 'package:flutter/material.dart';

import 'constantes.dart';
import 'elementos/stilo_botao.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({Key? key}) : super(key: key);

  @override
  _TelaHomeState createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  int _quantidade = 00;
  void aumentando() {
    setState(() {
      _quantidade++;
    });
  }

  void dimin() {
    setState(() {
      _quantidade--;
    });
  }

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
            Text(
              _quantidade == 20 ? "Não pode entrar" : "Pode entrar!",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Color(0xFF3C3C3C),
              ),
            ),
            Text(
              _quantidade.toString(),
              style: const TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3C3C3C),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _quantidade > 0 ? dimin : null,
                  child: const Text(
                    "Sair",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: BotaoStilo().stiloBotao,
                ),
                ElevatedButton(
                  onPressed: _quantidade < 20 ? aumentando : null,
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: BotaoStilo().stiloBotao,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
