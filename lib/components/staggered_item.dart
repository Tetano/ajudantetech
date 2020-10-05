import 'package:flutter/material.dart';

class StaggeredItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Image(
        image: NetworkImage(
          'https://images4.kabum.com.br/produtos/fotos/114334/placa-mae-msi-mag-b550-tomahawk-amd-am4-atx_1593462258_gg.jpg',
        ),
      ),
    );
  }
}
