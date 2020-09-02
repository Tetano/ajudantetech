import 'package:ajudantetech/screens/landing_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
  DocumentSnapshot documentSnapshot = await Firestore.instance.document('pokemon/S4Ptul2OpRjBTUGHQtnZ').get();
  print('${documentSnapshot.data['pokemon']['nome'].toString()}');

}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: (settings){
        switch (settings.name){
          case '/menu':
          default:
            return MaterialPageRoute(
              builder:(_) => LandingPage()
            );
        }
      },
      home: LandingPage(name: 'Flutter Demo Home Page'),
    );
  }
}

