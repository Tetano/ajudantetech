import 'package:ajudantetech/components/initial_drawer.dart';
import 'package:ajudantetech/components/staggered_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class InicialScreen extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    int index = 9;
    return Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Colors.red, Colors.deepPurple]
    )
    ),
      child: Scaffold(
      backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Center(
            child: new StaggeredGridView.count(
              primary: false,
              crossAxisCount: 4,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              children: <Widget>[
                StaggeredItem(),
                StaggeredItem(),
                StaggeredItem(),
                StaggeredItem(),
                StaggeredItem(),
                StaggeredItem(),
                StaggeredItem(),
                StaggeredItem(),
              ],
              staggeredTiles: const <StaggeredTile>[
                const StaggeredTile.count(2, 2),
                const StaggeredTile.count(2, 1),
                const StaggeredTile.count(2, 2),
                const StaggeredTile.count(2, 1),
                const StaggeredTile.count(2, 2),
                const StaggeredTile.count(2, 1),
                const StaggeredTile.count(2, 2),
                const StaggeredTile.count(2, 1),
              ],
            ),
          ),
        ),
        drawer: InitialDrawer(

        ),
      ),
    );
  }
}
