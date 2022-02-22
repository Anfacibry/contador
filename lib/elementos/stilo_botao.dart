import 'package:flutter/material.dart';

class BotaoStilo {
  ButtonStyle stiloBotao = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(const Color(0xFF209DB8)),
    fixedSize: MaterialStateProperty.all(const Size(100, 77)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    )),
  );
}
