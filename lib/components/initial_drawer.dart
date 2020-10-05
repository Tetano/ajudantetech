import 'package:ajudantetech/components/tiles_from_drawer.dart';
import 'package:flutter/material.dart';

class InitialDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          TilesFromDrawer(),
          TilesFromDrawer(),
        ],
      ),
    );
  }
}
