import 'package:ajudantetech/models/user/user_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'custom_drawer_header.dart';
import 'drawertile.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Theme.of(context).primaryColor,Theme.of(context).backgroundColor],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Consumer<UserManager>(
              builder: (_,userManager,__){
            return ListView(
              children: [
                CustomDrawerHeader(),
                !userManager.isLoggedIn ? DrawerTile(page: 2,iconData: Icons.computer, title: "Main Page"):
                DrawerTile(page: 0, iconData: Icons.person, title: "Fazer Login",),
              ],
            );
            }
            ),

        ],
      ),
    );
  }
}