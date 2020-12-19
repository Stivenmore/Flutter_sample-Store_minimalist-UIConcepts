import 'package:flutter/material.dart';
import 'package:store_minimalist/src/Utils/Constants.dart';

class Destacados extends StatelessWidget {
  const Destacados({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaulPaddins+5, horizontal: kDefaulPaddins),
      child: Row(
        children: [
          Expanded (child: Text('15 productos', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
          Text('Destacados',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

