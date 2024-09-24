

import 'dart:ui';

import 'package:background_app_bar/background_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodcard/utils/text_style.dart';

import '../Screens/bottom_navigator.dart';

class FoodPlans extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: IconButton(),
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
          "Foody Card",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(color: Colors.white,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shadowColor: Colors.redAccent,
                child: Container(
                  height: 250,width: 250,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Platinum Plan",style: TextStyleFoodCard.txtplancardline1),
                      Text("30 DAYS",style: TextStyleFoodCard.txtplancardline2),
                     RichText(text: TextSpan(text: "\₹3000.00 ",style: TextStyleFoodCard.txtplancardline3,children: [TextSpan(text: "/ Month",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w100))]),
                     ),
                      Text("Breakfast",style: TextStyleFoodCard.txtplancardline456,),
                      Text("Lunch",style: TextStyleFoodCard.txtplancardline456),
                      Text("Dinner",style: TextStyleFoodCard.txtplancardline456),
        
                      MaterialButton(height: 50,color: Colors.redAccent,minWidth: 150,padding: EdgeInsets.all(20),splashColor: Colors.white,shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10),)),
                        onPressed: (){},child: Text("Get Now",style: TextStyleFoodCard.txtplancardbutton),)
                    ],
                  ),
                ),
              ),
                Card(
                  shadowColor: Colors.redAccent,
                  child: Container(
                    height: 250,width: 250,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Gold Plan",style: TextStyleFoodCard.txtplancardline1),
                        Text("60 DAYS",style: TextStyleFoodCard.txtplancardline2),
                        RichText(text: TextSpan(text: "\₹5500.00 ",style: TextStyleFoodCard.txtplancardline3,children: [TextSpan(text: "/ Month",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w100))]),
                        ),
                        Text("Breakfast",style: TextStyleFoodCard.txtplancardline456,),
                        Text("Lunch",style: TextStyleFoodCard.txtplancardline456),
                        Text("Dinner",style: TextStyleFoodCard.txtplancardline456),
        
                        MaterialButton(height: 50,color: Colors.redAccent,minWidth: 150,padding: EdgeInsets.all(20),splashColor: Colors.white,shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10),)),
                          onPressed: (){},child: Text("Get Now",style: TextStyleFoodCard.txtplancardbutton),)
                      ],
                    ),
                  ),
                ),
                Card(
                  shadowColor: Colors.redAccent,
                  child: Container(
                    height: 250,width: 250,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Diamond Plan",style: TextStyleFoodCard.txtplancardline1),
                        Text("90 DAYS",style: TextStyleFoodCard.txtplancardline2),
                        RichText(text: TextSpan(text: "\₹8500.00 ",style: TextStyleFoodCard.txtplancardline3,children: [TextSpan(text: "/ Month",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w100))]),
                        ),
                        Text("Breakfast",style: TextStyleFoodCard.txtplancardline456,),
                        Text("Lunch",style: TextStyleFoodCard.txtplancardline456),
                        Text("Dinner",style: TextStyleFoodCard.txtplancardline456),
        
                        MaterialButton(height: 50,color: Colors.redAccent,minWidth: 150,padding: EdgeInsets.all(20),splashColor: Colors.white,shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10),)),
                          onPressed: (){},child: Text("Get Now",style: TextStyleFoodCard.txtplancardbutton),)
                      ],
                    ),
                  ),
                ),],
            ),
          ),
        ),
      ),
      bottomNavigationBar: FoodCardBottomNavigationBar(),
    );
  }
}
