import 'package:ajudantetech/models/user/user.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class UserManager extends ChangeNotifier{

List<String> totalData = [];
final Firestore fireStore = Firestore.instance;
final FirebaseAuth fireAuth = FirebaseAuth.instance;

List<User> users = [];
Firestore firestore = Firestore.instance;
Future<List<String>> getDados(String id) async {
  DocumentSnapshot dados = await fireStore.document('users/$id').get();

  totalData.add(dados.data['id']);
  totalData.add(dados.data['name']);
  totalData.add(dados.data['email']);
  List<String> lista = totalData;
  notifyListeners();
  return lista;
}

List getData(){ // Primeiro Pega todos os dados do firebase
  firestore.collection('users').getDocuments().then((snapshot){ // Da coleção faça um snapshot do documento
  users = snapshot.documents.map((doc) => User.fromDocument(doc)).toList(); // Passe para um array o snapshot com os dados mapeados e castados para lista
  });
  notifyListeners();
  return users;
}

void Showdata(){
  List<User> list = getData();
  for(User user in list){
    print('${user.id} ${user.name}/' '${user.email}');
  }
  notifyListeners();
}

Future<void> signIn({User user, Function onfail, Function onSucess}){

  fireAuth.signInWithEmailAndPassword(email: user.email, password: user.password);

}

}
