import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodcard/views/Screens/login_food.dart';
import 'package:foodcard/views/Screens/signin_food.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/text_style.dart';

class Firstpage_food extends StatelessWidget {
  const Firstpage_food({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white70,
            Colors.red.shade200,
          ],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  height: 150,
                  width: 300,
                  child:
                      Image(image: AssetImage("assets/images/logo tras.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Align(alignment:Alignment.center ,
                child: Container(
                           alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.redAccent,
                            blurRadius: 10,
                            spreadRadius: 1)
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          bottomLeft: Radius.circular(60)),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/burggerfood.png"))),
                  width: double.infinity,
                  height: 400,
                ),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Align(
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: MaterialButton(
                        onPressed: () {
                          Get.to(Food_login());
                        },
                        child: Center(child: Text("Login",style: TextStyleFoodCard.ButtonTxt)),
                        shape: StadiumBorder(
                          side: BorderSide(width: 2,
                            color: Colors.white,
                          ),
                        ),
                        height: 50,
                        minWidth: 150,
                        splashColor: Colors.redAccent,
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: MaterialButton(
                        onPressed: () {
                          Get.to(Food_Signin());
                        },
                        child: Center(child: Text("Create Account",style: TextStyleFoodCard.ButtonTxt)),
                        shape: StadiumBorder(
                          side: BorderSide(width: 2,
                            color: Colors.white,
                          ),
                        ),
                        height: 50,
                        minWidth: 150,
                        splashColor: Colors.red,
                      ),
                    ),
                  ),
                  SizedBox(height: 40,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
