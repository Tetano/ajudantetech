import 'package:ajudantetech/screens/register/register_screen.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        RegisterScreen(
        )
      ],
    );
  }
}
