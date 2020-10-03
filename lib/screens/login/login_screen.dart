import 'package:ajudantetech/components/form_field.dart';
import 'package:ajudantetech/models/user/user_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<EditableTextState> passKey = GlobalKey<EditableTextState>();
  bool obscure = false;

  String tittle = "Criar Conta";


  @override
  Widget build(BuildContext context) {
    setState(() {
      obscure = !obscure;
    });
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red, Colors.deepPurple]
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Align( alignment: Alignment.center,child: Text("Bem Vindo")),
        ),
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.center,
          child: Card(
            elevation: 30,
            shadowColor: Colors.pink,
            color: Colors.pink[50],
            margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: formKey,
                child: Consumer<UserManager>(
                    builder: (_, userManager, __) {
                      return Consumer<Campos>(
                        builder: (_,campos,__){
                            return ListView(
                              padding: const EdgeInsets.all(16),
                              shrinkWrap: true,
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                      alignLabelWithHint: true, icon: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                        child: Icon(
                                        Icons.email),
                                      )),
                                ),
                                TextFormField(
                                  key: passKey,
//                                  obscureText: campos.obscureText(obscure),
                                  obscureText: obscure,
                                  decoration: const InputDecoration(
                                      alignLabelWithHint: true, icon: Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Icon(
                                        Icons.lock),
                                  )),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,

                                    child: IconButton(
                                      icon: Icon(Icons.remove_red_eye),
                                      onPressed: () {
                                          obscure = campos.obscureText(obscure);
                                      },
                                    ),
                                  ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                  child: SizedBox(
                                    height: 40,
                                    child: RaisedButton(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                      ),
                                     ),
                                    ),
                                  ),
                              ],
                            );
                        },
                      );
                    }
                ),
              ),
          ),
        ),
     floatingActionButton:
     CircleAvatar(
         foregroundColor: Colors.pink[50],
         backgroundColor: Colors.pink[50],
         radius: 30,
         child: IconButton(
             onPressed: () {
               scaffoldKey.currentState.showSnackBar(
                   SnackBar(
                     content: Text(
                         "Não se preocupe, seus dados estão seguros e Criptografados"),
                     backgroundColor: Colors.blue[300],
                   )
               );
             },
             color: Colors.red,
             icon: Icon(
               Icons.security,
               color: Colors.red,
             )
         )
     ),

      ),
    );
  }
}