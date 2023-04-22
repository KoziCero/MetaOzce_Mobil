import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:meta_ozce_0/Screens/AnaEkran/ana_ekran.dart';
import 'package:meta_ozce_0/Screens/Otel_Konaklayan/home_screen_konak.dart';
import 'package:meta_ozce_0/Screens/Otel_Konaklayan/robot_page_konaklayan.dart';
import 'package:meta_ozce_0/Screens/Profil/profil_page.dart';
import 'package:meta_ozce_0/const/constant.dart';
import 'package:meta_ozce_0/widgets/change_thema.dart';

class NavigationKonak extends StatefulWidget {
  int index;

  NavigationKonak({this.index = 0});

  @override
  _NavigationKonakState createState() => _NavigationKonakState();
}

class _NavigationKonakState extends State<NavigationKonak> {
  @override
  Widget build(BuildContext context) {
    final screens = [
      AnaEkran(),
      RobotPageKonak(),
      ProfileScreen(),
    ];
    return Scaffold(
      body: screens[widget.index],
      bottomNavigationBar: CurvedNavigationBar(
          index: widget.index,
          backgroundColor: myColorBack,
          color: myColor,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) => setState(() {
                widget.index = index;
              }),
          items: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Image(
              image: AssetImage('assets/images/rob1.png'),
              height: 65,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
            )
          ]),
    );
  }
}
