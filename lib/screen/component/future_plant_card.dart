import 'package:flutter/material.dart';

import '../../constant.dart';


class FuturePlantCard extends StatelessWidget {
  const FuturePlantCard({Key? key, this.image}) : super(key: key);
  final String? image;

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return   Container(
      margin: EdgeInsets.only(top: kDefaultPadding/2, left: kDefaultPadding, bottom: kDefaultPadding/2),
      width: size.width*0.8,
      height: 185,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            fit: BoxFit.cover,
              image: AssetImage(image!)

          )

      ),
    );
  }
}
