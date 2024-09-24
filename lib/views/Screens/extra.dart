

import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../mealsPlan/food_plans.dart';
import 'home_food.dart';
enum _selectedTab {home,fav,add,set}
class FoodCardBottomNavigationBarr extends StatefulWidget {
  @override
  State<FoodCardBottomNavigationBarr> createState() =>
      _FoodCardBottomNavigationBarState();
}


class _FoodCardBottomNavigationBarState
    extends State<FoodCardBottomNavigationBarr> {
  // int index = 0;
var _currentIndex=  _selectedTab.home;
 // var _selectedTab = _SelectedTab.home;

  _onTap(int index){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return _childern[_currentIndex.index];
    },));
  }

  final List<Widget>_childern=[
    FoodHomePage(),
    FoodHomePage(),
    FoodPlans(),
    FoodyCard(),
  ];


  @override
  Widget build(BuildContext context) {
    return




// void _handleIndexChanged(int i) {
//   setState(() {
//     _selectedTab = _SelectedTab.values[i];
//   });
// }

    CrystalNavigationBar(
    backgroundColor: Colors.grey,
    boxShadow: [BoxShadow(
        color: Colors.red, spreadRadius: 5, blurRadius: 5
    )
    ],
    currentIndex:0,

//_handleIndexChanged,
    indicatorColor: Colors.red,
    items: [
      CrystalNavigationBarItem(

        unselectedColor: Colors.white,
        icon: Icons.home,
        unselectedIcon: Icons.home,
        selectedColor: Colors.red,
      ),
      CrystalNavigationBarItem(
        unselectedColor: Colors.white,
        icon: Icons.home,
        unselectedIcon: Icons.home,
        selectedColor: Colors.red,
      ),
      CrystalNavigationBarItem(
        unselectedColor: Colors.white,
        icon: Icons.home,
        unselectedIcon: Icons.home,
        selectedColor: Colors.red,
      ),
      CrystalNavigationBarItem(
        unselectedColor: Colors.white,
        icon: Icons.home,
        unselectedIcon: Icons.home,
        selectedColor: Colors.red,
      ),


    ],
      onTap:_onTap,
    );

  }}
///CrystalNavigationBar start end
