import 'package:flutter/material.dart';

import '../../constant.dart';


class RecomandationCard extends StatelessWidget {
   RecomandationCard({Key? key, this.press, this.title, this.price, this.country, this.image }) : super(key: key);

  final String? image,title,country;
  final int? price;
  final Function? press;


  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return  Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding/2,
          bottom: kDefaultPadding*2.5
      ),
      width: size.width *0.4,

      child: Column(
        children: [
          Image.asset(image!),
          Container(
            padding: EdgeInsets.all(kDefaultPadding/2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ]
            ),
            child: Row(
              children: [
                RichText(text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$title \n".toUpperCase(),
                          style: Theme.of(context).textTheme.button
                      ),
                      TextSpan(
                        text: '$country'.toUpperCase(),
                        style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5)
                        ),
                      ),


                    ]
                )),
                Spacer(),
                Text('$price', style: Theme.of(context).textTheme.button?.copyWith(color: kPrimaryColor),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
