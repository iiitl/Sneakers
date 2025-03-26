// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:snks/pages/menus/cart.dart';
import 'package:snks/pages/menus/products.dart';
import 'package:snks/pages/menus/profile.dart';
import 'package:snks/pages/menus/search.dart';
import 'package:snks/pages/menus/yourFavourites.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final iconList = <IconData>[
    Icons.brightness_5,
    Icons.brightness_4,
    Icons.brightness_6,
    Icons.brightness_7,
  ];

  int _page = 2;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 2,
        height: 60,
        animationDuration: Duration(milliseconds: 400),
        backgroundColor: Colors.transparent,
        color: Colors.yellow,
        items: <Widget>[
          Icon(Icons.search, size: 30),
          Icon(Icons.shopping_bag, size: 30),
          Icon(Icons.home_filled, size: 30),
          Icon(Icons.favorite, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.s,
          children: [
            if (_page == 0) saearchMenu(),
            if (_page == 1) MyCart(),
            if (_page == 2) MYProducts(),
            if (_page == 3) Favourites(),
            if (_page == 4) MyProfile(),
          ],
        ), // Center
      ),
    );
  }
}
/**
 * 
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: 'Home',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
              color: Colors.black,
            ),
            label: 'Business',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
            label: 'School',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              color: Colors.black,
            ),
            label: 'Fav',
            backgroundColor: Colors.yellow,
          ),
        ],
        currentIndex: _bottomNavIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
 */