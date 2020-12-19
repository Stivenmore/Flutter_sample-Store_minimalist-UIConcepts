import 'package:flutter/material.dart';
import 'package:store_minimalist/src/Utils/Constants.dart';

class Categoria extends StatefulWidget {
  Categoria({Key key}) : super(key: key);

  @override
  _CategoriaState createState() => _CategoriaState();
}

class _CategoriaState extends State<Categoria> {
  List<String> categorias = ['Todos', 'Mesas', 'Sillas'];
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index) => categorie(index)),
    );
  }
   Widget categorie(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: _selectIndex == index ? kColorBlack : kColorGray),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              categorias[index],
              style: TextStyle(
                  fontSize: 15,
                  color: _selectIndex == index ? kColorGray : kColorBlack,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}