import 'package:flutter/material.dart';
import 'package:store_minimalist/src/Pages/Home/Widgets/BottomNavB.dart';
import 'package:store_minimalist/src/Pages/Home/Widgets/HomeBody.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Stack(children: [HomeBody(), BNavBo()],)),
    );
  }
}
