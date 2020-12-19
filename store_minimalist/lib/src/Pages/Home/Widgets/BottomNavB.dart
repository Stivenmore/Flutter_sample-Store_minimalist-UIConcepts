import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_minimalist/models/BNavB.dart';
import 'package:store_minimalist/src/Utils/Constants.dart';

class BNavBo extends StatefulWidget {
  BNavBo({Key key}) : super(key: key);

  @override
  _BNavBoState createState() => _BNavBoState();
}

class _BNavBoState extends State<BNavBo> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
              height: 60,
              width: double.infinity,
              color: kColorWhite,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemsBNavB.length,
                  itemBuilder: (context, index) => bottomnav(index))),
        ),
      ),
    );
  }

  Widget bottomnav(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: kDefaulPaddins * 1.45),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: _selectIndex == index
                              ? kColorBlack
                              : kColorWhite),
                      child: SvgPicture.asset(
                        itemsBNavB[index].path,
                        height: 22.0,
                        width: 20.0,
                        color:
                            _selectIndex == index ? kColorWhite : kColorBlack,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
