import 'package:flutter/material.dart';

import '../../constant.dart';


class TitleFile extends StatelessWidget {
  const TitleFile({Key? key, required this.title }) : super(key: key);
  final String title;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Container(
            height: 24,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding /4),
                  child: Text(title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Positioned(

                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.only(right: kDefaultPadding/4),
                      height: 7,
                      color: kPrimaryColor.withOpacity(0.2),

                    ))
              ],
            ),
          ),
          Spacer(),
          ElevatedButton(onPressed: (){}, child: Text("More", style: TextStyle(color: Colors.white),))

        ],
      ),
    );
  }
}
