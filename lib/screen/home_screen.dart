import 'package:flutter/material.dart';
import 'package:untitled/screen/component/body_com.dart';

import '../constant.dart';
import 'component/bottom_navigation_var.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
        bottomNavigationBar: BottomNavigation()
    );
  }
  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
    );
  }
}
