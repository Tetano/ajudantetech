import 'package:flutter/material.dart';

class MiniBox extends StatelessWidget {
  final Color color;
  final int number;
  MiniBox({this.color,this.number});
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          color: color,
          width: number%2==0 ? 100: 50,
          height: number%2==0 ? 50: 100,
          child: Center(
            child: Text(
                "$number",),
          ),
        ));
  }
}
