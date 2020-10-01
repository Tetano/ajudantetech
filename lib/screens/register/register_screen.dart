import 'package:ajudantetech/models/user/user_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  String tittle = "Criar Conta";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.deepPurple,Colors.red]
      )
      ),
        child: Scaffold(
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
                  builder: (_,userManager,__){
                    return ListView(
                      padding: const EdgeInsets.all(16),
                      shrinkWrap: true,
                      children: [
                          TextFormField(
                          decoration: const InputDecoration(alignLabelWithHint: true,icon: Icon(Icons.email)),
                          ),
                        TextFormField(
                          onTap: (){
                          },
                          decoration: const InputDecoration(alignLabelWithHint: true, icon: Icon(Icons.lock),

                        ),
                        ),
                        TextFormField(
                          onTap: (){
                          },
                          decoration: const InputDecoration(alignLabelWithHint: true, icon: Icon(Icons.lock_outline),
                          ),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(alignLabelWithHint: true,icon: Icon(Icons.person)),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0,0),
                          child: SizedBox(
                            height: 40,
                            child: RaisedButton(
                              color: Colors.grey[600],
                              onPressed: (){},
                              child: Text(
                                'Cadastrar',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
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
                onPressed: (){
                  scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text("Não se preocupe, seus dados estão seguros e Criptografados"),
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
