import 'package:flutter/material.dart';
import 'package:store_minimalist/models/Pruductosmodels.dart';
import 'package:store_minimalist/src/Pages/Detail/Details.dart';
import 'package:store_minimalist/src/Pages/Home/Widgets/ItemCard.dart';

class GridCarrusel extends StatelessWidget {
  const GridCarrusel({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 30,
            childAspectRatio: 0.85,
              crossAxisCount: 2),
          itemCount: products.length,
          itemBuilder: (context, index) =>
              ItemsCard(product: products[index],
              press: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => Details(
                product: products[index],
              ))),
              ),),
    );
  }
}
