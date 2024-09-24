

import 'package:flutter/material.dart';
import 'package:foodcard/views/Screens/extra.dart';
import '../../utils/text_style.dart';
import '../Appbar_Home/home_appbar.dart';
import '../CarosalSlider_home/carosalslider_home.dart';
import '../SliverList_SmallCard/Food_options_list6.dart';
import '../Sliver_Grid_food/hotel_slivergrid_food.dart';
import 'bottom_navigator.dart';





class FoodHomePage extends StatefulWidget {
  @override
  State<FoodHomePage> createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
//   int index=0;
  //
  // List<Widget> screens=[
  //   FoodHomePage(),
  //   FoodPlans(),
  //   FoodPlans(),
  //   FoodPlans(),
  //
  // ];

  @override

  Widget build(BuildContext context) {
   //final homeScreenProvider= Provider.of<HomeScreenProvider>(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
 /// App bar
          HomeAppbar(),

 ///Carousel Slider

          CarosalSliderHome(),

/// Row Buttons Small Food Option Cards
         SliverToBoxAdapter(
             child: Padding(
               padding: const EdgeInsets.only(left: 15),
               child: Text("Add On",style: TextStyleFoodCard.TxtCardDetails,),
             )),

          FoodOptionsList6(),

 /// Cards
          SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Top Restaurants",style: TextStyleFoodCard.TxtCardDetails,),
              )),
          SliverGridFood(),
        ],
      ),

 /// Bottom Navigation bar
bottomNavigationBar: FoodCardBottomNavigationBar()

    );
  }
}




