import 'package:flutter/material.dart';

import 'constantes.dart';

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

  bool get podeEntrar => _quantidade == 0;
  bool get naoEntrar => _quantidade == 20;

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
              naoEntrar ? "Não pode entrar" : "Pode entrar!",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
                color: Color(0xFF3C3C3C),
              ),
            ),
            Text(
              _quantidade.toString(),
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: naoEntrar ? Colors.red : const Color(0xFF3C3C3C),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: podeEntrar ? null : dimin,
                  child: const Text(
                    "Sair",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: podeEntrar
                        ? const Color(0xFF209DB8).withOpacity(.30)
                        : const Color(0xFF209DB8),
                    fixedSize: const Size(100, 77),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: naoEntrar ? null : aumentando,
                  child: const Text(
                    "Entrar",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: naoEntrar
                        ? const Color(0xFF209DB8).withOpacity(.30)
                        : const Color(0xFF209DB8),
                    fixedSize: const Size(100, 77),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
