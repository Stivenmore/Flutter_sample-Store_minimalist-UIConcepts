import 'package:flutter/material.dart';
import 'package:store_minimalist/models/Pruductosmodels.dart';
import 'package:store_minimalist/src/Utils/Constants.dart';

class BodyDetails extends StatelessWidget {
  final ProductsModels products;
  const BodyDetails({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(children: [
      SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Container(
              height: size.height * 0.65,
              width: double.infinity,
              child: Image.asset(products.image, fit: BoxFit.cover),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.6),
              decoration: BoxDecoration(
                  color: kColorBlack,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: kDefaulPaddins * 3, horizontal: kDefaulPaddins),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Producto',
                      style: TextStyle(color: kColorWhite),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${products.name}',
                      style: TextStyle(fontSize: 20, color: kColorWhite),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Precio', style: TextStyle(color: kColorWhite)),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'S/${products.price}',
                          style: TextStyle(fontSize: 20, color: kColorWhite),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: kColorWhite),
                      child: Align(
                          child: Text(
                        'BUY',
                        style: TextStyle(
                            color: kColorBlack,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    ]);
  }
}
