import 'dart:ffi';
import 'dart:math';

import 'package:ajudantetech/screens/components/default_random_button.dart';
import 'package:ajudantetech/screens/components/miniBox.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  final String name;
  LandingPage({this.name});
  @override
  Widget build(BuildContext context) {
    List<Color> cores = [Colors.red,Colors.blue,Colors.purple,Colors.pink];
    Random random = new Random();

    Color testar(){
     int aux = random.nextInt(4);
     print(aux);
     print(cores[aux]);
      return cores[aux];
    }
    int randNum(int num){
      return random.nextInt(num);
    }
    return Scaffold(
      appBar: AppBar(

      ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.yellow,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center
            ,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultButton(color: testar(),),
              DefaultButton(color: testar(),),
              DefaultButton(color: testar(),),
              MiniBox(color: testar(),number: randNum(10),)
            ],
          ),

        ),
    );
  }
}
