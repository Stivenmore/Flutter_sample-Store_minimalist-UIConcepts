import 'package:flutter/material.dart';
import 'package:store_minimalist/src/Utils/Constants.dart';

class EscogePruducts extends StatelessWidget {
  const EscogePruducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaulPaddins*2, horizontal: kDefaulPaddins*1.5),
      child: Row(
        children: [
          Expanded(child: Text('Escoge tus productos', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
          Icon(Icons.more_vert)
        ],
      ),
    );
  }
}