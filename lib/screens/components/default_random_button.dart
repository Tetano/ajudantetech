import 'package:flutter/material.dart';
import 'dart:math';

class DefaultButton extends StatelessWidget {
  final Color color;
  DefaultButton({this.color});
  Widget build(BuildContext context) {
    List<Color> cores = [Colors.red,Colors.blue,Colors.purple,Colors.pink];
    Random random = new Random();

    return RaisedButton(
      onPressed: (){},
      color: color,
      child: Text("Olá"),
    );
  }
}
