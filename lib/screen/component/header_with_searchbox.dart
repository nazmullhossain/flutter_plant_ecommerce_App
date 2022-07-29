import 'package:flutter/material.dart';

import '../../constant.dart';

class HeaderWithSearchBox extends StatelessWidget {
   HeaderWithSearchBox({Key? key,  required this.size }) : super(key: key);
final Size size;
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Container(

      height: size.height*0.2,
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5,),

      child: Stack(
        children: [
          Container(
            height: size.height*0.2-27,
            padding: EdgeInsets.only(
                bottom: 36+kDefaultPadding,
                left: kDefaultPadding,
                right: kDefaultPadding
            ),
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36)
                )
            ),
            child: Row(
              children: [
                Text("Hi Uishopy", style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.white,fontWeight: FontWeight.bold)),
                Spacer(),
                Image.asset("images/logo.png")
              ],
            ),
          ),
          Positioned(

              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0,10),

                          blurRadius: 50,
                          color: kPrimaryColor
                      )
                    ]


                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "search",
                            hintStyle: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5)
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none
                        ),
                      ),
                    ),
                    Icon(Icons.search)
                  ],
                ),

              ))
        ],
      ),
    );
  }
}
