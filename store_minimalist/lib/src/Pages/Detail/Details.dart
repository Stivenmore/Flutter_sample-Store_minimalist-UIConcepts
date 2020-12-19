import 'package:flutter/material.dart';
import 'package:store_minimalist/models/BNavB.dart';
import 'package:store_minimalist/models/Pruductosmodels.dart';
import 'package:store_minimalist/src/Pages/Detail/BodyDetail.dart';
import 'package:store_minimalist/src/Pages/Home/Widgets/BottomNavB.dart';

class Details extends StatelessWidget {
  final ProductsModels product;

  const Details({
    Key key, this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [BodyDetails(products: product), BNavBo()],),
    );
  }
}
