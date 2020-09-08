import 'package:ajudantetech/models/user/user.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class UserManager extends ChangeNotifier{

List<String> totalData = [];
final Firestore fireStore = Firestore.instance;
final FirebaseAuth fireAuth = FirebaseAuth.instance;


Future<List<String>> getDados(String id) async {
  DocumentSnapshot dados = await fireStore.document('users/$id').get();

  totalData.add(dados.data['id']);
  totalData.add(dados.data['name']);
  totalData.add(dados.data['email']);
  List<String> lista = totalData;
  notifyListeners();
  return lista;
}

Future<void> signIn({User user, Function onfail, Function onSucess}){

  fireAuth.signInWithEmailAndPassword(email: user.email, password: user.password);

}

}
