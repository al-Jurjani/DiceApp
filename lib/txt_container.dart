import 'package:flutter/material.dart';

class TxtContainer extends StatelessWidget {
  const TxtContainer(this.text, {super.key});
  final String text;

  @override
  Widget build(context) {
    return Text(text,
        style: const TextStyle(color: Colors.cyan, fontSize: 28.0));
  }
}
