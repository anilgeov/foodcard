import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:foodcard/views/Screens/signin_food.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../database/db_foody.dart';
import '../../utils/text_style.dart';
import 'home_food.dart';

class Food_login extends StatelessWidget {
 // const Food_login({super.key});
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lime,
            Colors.white,
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
                  width: 200,
                  child:
                      Image(image: AssetImage("assets/images/logo tras.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
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
                        image: AssetImage(
                          "assets/images/burger tran.png",
                        ))),
                width: double.infinity,
                height: 400,
                child:Align(alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 5,bottom: 50),
                        child: Align(alignment: Alignment.topLeft,
                            child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child:

                        ///TextField username

                        TextField(
                          controller: emailController,
                          cursorColor: Colors.redAccent,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(
                                  gapPadding: 5,
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ),
                                  borderSide: BorderSide(
                                      color: Colors.redAccent,
                                      width: 10,
                                      style: BorderStyle.solid,
                                      strokeAlign: 5)),
                              label: Text("UserEmailID")),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15,top: 20),
                        child:

                        ///TextField password

                        TextField(
                          controller: passController,
                          cursorColor: Colors.redAccent,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(
                                  gapPadding: 5,
                                  borderRadius: BorderRadius.circular(
                                    15,
                                  ),
                                  borderSide: BorderSide(
                                      color: Colors.redAccent,
                                      width: 10,
                                      style: BorderStyle.solid,
                                      strokeAlign: 5)),
                              label: Text("Password")),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 30,),

                      /// Buttons

                      Align(alignment: Alignment.bottomCenter,
                        child: Expanded(
                          child: MaterialButton(
                            onPressed: () {
                              loginUser();
                              //Get.offAll(FoodHomePage());
                            },
                            child: Text("Login",style: TextStyleFoodCard.ButtonTxt
                            ),

                            shape: StadiumBorder(
                              side: BorderSide(width: 3,
                                color: Colors.white,
                              ),
                            ),
                            height: 50,
                            minWidth: 150,
                            splashColor: Colors.redAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height:15,
            ),

            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                   mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40,width:90,
                        child: Image(image: AssetImage("assets/images/lunch boxtras.png"))),

                    RichText(
                        text: TextSpan(
                          text: "Note a User?",
                          style: GoogleFonts.timmana(),
                          children: [
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Get.to( Food_Signin());
                                  },
                                text: " Register Here!",
                                style: GoogleFonts.timmana(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ))
                          ],
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  void loginUser() {
    String email=emailController.text.trim();
    String pass=passController.text.trim();
    FirebaseFunctions().loginUser(email:email,pwd:pass).then((response){
      if(response==null){
        Get.offAll(FoodHomePage());
      }else{
        Get.snackbar("ID or Password Mismatch!!", response);
      }
    });
  }
}


