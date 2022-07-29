import 'package:flutter/material.dart';
import 'package:untitled/constant.dart';
import 'package:untitled/screen/component/future_plant_card.dart';
import 'package:untitled/screen/component/header_with_searchbox.dart';
import 'package:untitled/screen/component/remmedaton_card.dart';
import 'package:untitled/screen/component/title_file.dart';

import '../../constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override

  Widget build( BuildContext context) {
    Size size= MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
              HeaderWithSearchBox(size: size,),
      TitleFile(title: "Recomondad",

     ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(

              children: [
                RecomandationCard(
                  image: 'images/image_1.png',
                  title: "Samantha",
                  country: "Russia",

                  press: (){},
                  price: 330,
                ),
                RecomandationCard(
                  image: 'images/image_2.png',
                  title: "Angelica",
                  country: "America",

                  press: (){},
                  price: 330,
                ),
                RecomandationCard(
                  image: 'images/image_3.png',
                  title: "Catlina",
                  country: "Dhaka",

                  press: (){},
                  price: 330,
                ),
                RecomandationCard(
                  image: 'images/image_1.png',
                  title: "Samantha",
                  country: "Russia",

                  press: (){},
                  price: 330,
                ),
                RecomandationCard(
                  image: 'images/image_1.png',
                  title: "Samantha",
                  country: "Russia",

                  press: (){},
                  price: 330,
                ),
                RecomandationCard(
                  image: 'images/image_1.png',
                  title: "Samantha",
                  country: "Russia",

                  press: (){},
                  price: 330,
                ),
                RecomandationCard(
                  image: 'images/image_1.png',
                  title: "Samantha",
                  country: "Russia",

                  press: (){},
                  price: 330,
                ),
                RecomandationCard(
                  image: 'images/image_1.png',
                  title: "Samantha",
                  country: "Russia",

                  press: (){},
                  price: 330,
                ),
              ],
            ),
          ),
          TitleFile(title: "Feuture Plant",),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FuturePlantCard(image: 'images/bottom_img_1.png',),
                FuturePlantCard(image: 'images/bottom_img_2.png',),
              ],
            ),
          ),
          SizedBox(height: 80,)






        ],
      ),
    );
  }
}
