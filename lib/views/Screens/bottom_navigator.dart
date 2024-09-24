import 'package:flutter/material.dart';
import 'package:foodcard/views/Screens/home_food.dart';
import 'package:foodcard/views/Screens/tokens_food.dart';
import 'package:foodcard/views/mealsPlan/food_plans.dart';

import '../../utils/color_theme.dart';
import '../Card/food_debitcard.dart';

class FoodCardBottomNavigationBar extends StatefulWidget {
  @override
  State<FoodCardBottomNavigationBar> createState() =>
      _FoodCardBottomNavigationBarState();
}

class _FoodCardBottomNavigationBarState
    extends State<FoodCardBottomNavigationBar> {
  // int index = 0;

  int _currentIndex = 0;



 _onTap(int index) {
   int _seletedIndex = index;
    Navigator.of(context).pushReplacement(MaterialPageRoute<Null>(
      builder: (BuildContext context) {
        return _childern[_seletedIndex];
      },
    ));
  }
  final List<Widget> _childern = [
    FoodHomePage(),
    FoodPlans(),
    TokensFood(),
    TokensFood(),


  ];


  @override
  Widget build(BuildContext context) {
    return

        /// to take selected page from nav bar
        //body:screens[index],
        // Provider.of<BottomnavController>(context).screens[Provider.of<BottomnavController>(context).selectedIndex],

        Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.red, spreadRadius: 5, blurRadius: 4)
          ],
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFB4A1A1)
        ),
        child: BottomNavigationBar(

        enableFeedback: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: FoodyCardColor.AppIconColor,
          unselectedItemColor: Colors.grey,
          currentIndex:_currentIndex,

          //       Provider.of<BottomnavController>(context).selectedIndex,
          //       onTap: _currentIndex,
          // (tappedIndex) {
          //         setState(() {
          //           index = tappedIndex;
          //         });
          //       },
          // Provider.of<BottomnavController>(context,listen: false).onItemTap,

          selectedIconTheme: IconThemeData(
            color: Colors.redAccent,
            size: 25,
          ),
          unselectedIconTheme: IconThemeData(
            // color: Colors.red,
            size: 25,
          ),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 25,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.backpack,
                  size: 25,
                ),
                label: "plans"),
            BottomNavigationBarItem(
                  icon: Icon(
                    Icons.incomplete_circle_sharp,
                    size: 25,
                  ),

                label: "Tokens"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 25,
                ),
                label: "Profile"),
          ],
          onTap:_onTap,
        ),
      ),
    );
  }
}
