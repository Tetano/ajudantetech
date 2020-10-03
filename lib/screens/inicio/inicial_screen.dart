import 'package:ajudantetech/components/initial_drawer.dart';
import 'package:flutter/material.dart';

class InicialScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.red, Colors.deepPurple]
    )
    ),
      child: Scaffold(
      backgroundColor: Colors.transparent,
        drawer: InitialDrawer(

        ),
      ),
    );
  }
}
