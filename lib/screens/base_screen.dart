import 'package:ajudantetech/models/user/page_manager.dart';
import 'package:ajudantetech/models/user/user_manager.dart';
import 'package:ajudantetech/screens/inicio/hardware_screen.dart';
import 'package:ajudantetech/screens/login/login_screen.dart';
import 'package:ajudantetech/screens/menu/menu.screen.dart';
import 'package:ajudantetech/screens/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();
  double pagina;
  int pag;
  BaseScreen(this.pagina);
  @override
  Widget build(BuildContext context) {
    return Provider( // Cuidado, este provider é necessário para o funcionamento do Drawer e demais componentes.
      create: (_) => PageManager(pageController),
      child: Consumer<UserManager>(
        builder: (_,userManager,__){
          return PageView(
            onPageChanged: (pag){
              pagina = pageController.page;
              print(pagina);
            },
            controller: pageController,
            scrollDirection: Axis.vertical,
            children: [
              LoginScreen(),
              RegisterScreen(),
              MenuScreen(),
              HardwareScreen(),
            ],

          );
        },
      ),
    );
  }
}
