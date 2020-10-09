import 'package:flutter/material.dart';

class TilesFromDrawer extends StatelessWidget {
  @override
  final IconData iconData;
  final String tittle;
  final int Page;
  const TilesFromDrawer({this.iconData,this.tittle,this.Page});
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.read<PageManager>().setPage(page);
        debugPrint('${page} foi tocada');
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Icon(
                iconData,
                size: 32,
                color: curPage == page ? Colors.pink : Colors.grey[800],
              ),
            ),
            Text(title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
