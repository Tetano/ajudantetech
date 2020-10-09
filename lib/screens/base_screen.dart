import 'package:ajudantetech/components/initial_drawer.dart';
import 'package:ajudantetech/screens/inicio/hardware_screen.dart';
import 'package:ajudantetech/screens/login/login_screen.dart';
import 'package:ajudantetech/screens/register/register_screen.dart';
import 'package:flutter/material.dart';

import 'landing_page.dart';

class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();
  double pagina;
  int pag;
  BaseScreen(this.pagina);
  @override
  Widget build(BuildContext context) {
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
        InicialScreen(),
      ],

    );
  }
}
