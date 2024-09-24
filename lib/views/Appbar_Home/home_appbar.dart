import 'dart:ui';

import 'package:background_app_bar/background_app_bar.dart';
import 'package:flutter/material.dart';

import '../../utils/color_theme.dart';
import '../../utils/text_style.dart';
import '../Card/food_debitcard.dart';

class HomeAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
      floating: true,
      pinned: true,
      title: Text(
        "Your Tiffin Box",
        style: TextStyleFoodCard.AppbarhmTxt,
      ),

      /// popup button
      actions: [
        PopupMenuButton(tooltip: "Location",
          itemBuilder: (context) {
            return
              [PopupMenuItem(onTap: () {

              },child: Center(
                  child: Column(
                    children: [
                      TextButton(child: Text("Kochi"), onPressed: () {  },),
                      TextButton(child: Text("Chennai"), onPressed: () {  },),
                      TextButton(child: Text("Bangalore"), onPressed: () {  },),
                    ],
                  )))];
          },
          shadowColor: Colors.red,shape: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(10))),
          icon: Icon(
    Icons.add_location,size: 25,color:FoodyCardColor.AppIconColor,
            shadows: [
              BoxShadow(
                color: Colors.yellowAccent,
                blurRadius: 5,
                spreadRadius: 2,
              )
            ],
          ),
        ),


       /// button card 2
        PopupMenuButton(tooltip: "Card",
          itemBuilder: (context) {
            return
              [PopupMenuItem(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>FoodCard() ,));
            },child: Center(
            child: Text("Your Card")))];
          },
          shadowColor: Colors.red,shape: OutlineInputBorder(borderRadius:BorderRadius.only(topRight:Radius.circular(15),bottomLeft:Radius.circular(15),)),
          icon: Icon(
            Icons.credit_card_outlined,
            color:FoodyCardColor.AppIconColor,
            size: 25,
            shadows: [
              BoxShadow(
                color: Colors.yellowAccent,
                blurRadius: 5,
                spreadRadius: 2,
              )
            ],
          ),
        )
      ],

      /// Bottom App Bar

      bottom: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        title: Container(
          color: Colors.transparent,

          width: double.infinity,
          height: 40,
          //color: Colors.white,
          child: const TextField(
            cursorColor: Colors.white,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 10,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              hintText: "Search Here ",
              hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w100),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications,
              color:FoodyCardColor.AppIconColor,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
