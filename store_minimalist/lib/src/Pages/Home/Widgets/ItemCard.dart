import 'package:flutter/material.dart';
import 'package:store_minimalist/models/Pruductosmodels.dart';
import 'package:store_minimalist/src/Utils/Constants.dart';

class ItemsCard extends StatelessWidget {
  final ProductsModels product;
  final Function press;
  const ItemsCard({Key key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
          child: Padding(
        padding: const EdgeInsets.only(left: kDefaulPaddins / 1.2),
        child: Stack(
          children: [
            Container(
              width: 165,
              height: 300,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              top: 170,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  color: kColorBlack,
                  width: 165,
                  height: 80,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: kDefaulPaddins / 2, vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Text(
                          product.name,
                          style: TextStyle(color: kColorWhite),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'S/ ${product.price}',
                                style: TextStyle(color: kColorWhite),
                              ),
                            ),
                            Icon(
                              Icons.star_border,
                              size: 18,
                              color: kColorWhite,
                            ),
                            Text('${product.star}',
                                style: TextStyle(color: kColorWhite))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
