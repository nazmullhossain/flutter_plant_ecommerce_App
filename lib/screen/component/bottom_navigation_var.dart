

import 'package:flutter/material.dart';

import '../../constant.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: kDefaultPadding*2, right: kDefaultPadding*2, bottom: kDefaultPadding/2) ,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10.0)
          ),
          color: kPrimaryColor,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -10),
                blurRadius: 35,
                color: kPrimaryColor.withOpacity(0.38)
            )
          ]

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
