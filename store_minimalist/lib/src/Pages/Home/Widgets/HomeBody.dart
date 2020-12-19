import 'package:flutter/material.dart';
import 'package:store_minimalist/models/Pruductosmodels.dart';
import 'package:store_minimalist/src/Pages/Home/Widgets/Categoria.dart';
import 'package:store_minimalist/src/Pages/Home/Widgets/Destacados.dart';
import 'package:store_minimalist/src/Pages/Home/Widgets/EscogeProducts.dart';
import 'package:store_minimalist/src/Pages/Home/Widgets/GridCarrusel.dart';
import 'package:store_minimalist/src/Pages/Home/Widgets/ItemCard.dart';
import 'package:store_minimalist/src/Utils/Constants.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
   Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              EscogePruducts(),
              Categoria(),
              Destacados(),
              GridCarrusel(size: size),
            ],
          ),
        ),
      ),
    );
  }

 
}

