import 'package:provider/provider.dart';
import 'dart:math';

import 'package:ajudantetech/models/user/user_manager.dart';
import 'package:ajudantetech/screens/components/default_random_button.dart';
import 'package:ajudantetech/screens/components/miniBox.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  final String name;

  LandingPage({this.name});
  @override
  Widget build(BuildContext context) {
    List<Color> cores = [Colors.red,Colors.blue,Colors.purple,Colors.pink];
    Random random = new Random();

    Color testar(){
     int aux = random.nextInt(4);
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
          child: Consumer<UserManager>(
            builder: (_,userManager,__){
               return Row(
                 mainAxisSize: MainAxisSize.max,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   RaisedButton(
                     onPressed: () {
                      userManager.Showdata();
                     },
                     color: Colors.white,
                     child: Text("Click"),
                   ),
                   DefaultButton(color: testar(),),
                   DefaultButton(color: testar(),),
                   MiniBox(color: testar(),number: randNum(10),)
                 ],
               );
             },
          ),

        ),
    );
  }
}
