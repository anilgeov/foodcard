import 'dart:ui';

import 'package:background_app_bar/background_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/text_style.dart';
import '../mealsPlan/food_plans.dart';
import 'bottom_navigator.dart';

class TokensFood extends StatelessWidget {
  const TokensFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: BackgroundFlexibleSpaceBar(
          centerTitle: false,
          titlePadding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
          background: ClipRect(
            child: Container(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    color: Colors.transparent.withOpacity(0.5),
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/burggerfood.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        title: Text(
          "Tokens",
          style:TextStyleFoodCard.Appbarstxt ,
        ),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("⚠️ There is not any Active Plans !!"),
            TextButton(onPressed: (){
              Get.to(FoodPlans());
            }, child:Text(" Click Here to Get a Plan ..",style:GoogleFonts.aBeeZee(color: Colors.redAccent),))
          ],
        ),
      ),
      bottomNavigationBar: FoodCardBottomNavigationBar(),
    );
  }
}
