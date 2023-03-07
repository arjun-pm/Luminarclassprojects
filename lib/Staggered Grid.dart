import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';
void main(){
  runApp(MaterialApp(home: StaggeredGridd(),));
}
class StaggeredGridd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGridView.count(
      crossAxisCount: 5,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      staggeredTiles: const [
        StaggeredTile.count(2,2),
        StaggeredTile.count(1,2),
        StaggeredTile.count(2,2),
        StaggeredTile.count(2,4),
        StaggeredTile.count(2,3),
        StaggeredTile.count(2,2),
        StaggeredTile.count(2,3),
      ],
      children: [
        Customchild(iconData: Icons.add, bgcolor: Colors.blue,),
        Customchild(iconData: Icons.account_box_sharp, bgcolor: Colors.black,),
        Customchild(iconData: Icons.r_mobiledata, bgcolor: Colors.red,),
        Customchild(iconData: Icons.tab, bgcolor: Colors.green,),
        Customchild(iconData: Icons.e_mobiledata_outlined, bgcolor: Colors.yellow,),
        Customchild(iconData: Icons.nat_outlined, bgcolor: Colors.purple,),
        Customchild(iconData: Icons.javascript_outlined, bgcolor: Colors.orange,),
      ],
    ));
  }
}

class Customchild extends StatelessWidget {
  final Color? bgcolor;
  final IconData iconData;
  final String? texts;
  final Image? image;
  // VoidCallback onpress;

  Customchild({
    required this.bgcolor,
    required this.iconData,
    this.texts,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(
        iconData,
        color: Colors.white,
      ),
    );
  }
}
