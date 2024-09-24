import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../database/db_foody.dart';
import 'login_food.dart';

class Food_Signin extends StatelessWidget {
  //const Food_Signin({super.key});

  final emailController = TextEditingController();
  final passController = TextEditingController();
  final nameController = TextEditingController();
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
                Colors.deepOrange,
                Colors.white70,
              ],
            )),

        /// logo

        child: Column(
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
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red,
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


                /// Text Fields & Page label

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 5,bottom: 50),
                      child: Align(alignment: Alignment.topLeft,
                          child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child:

                      /// Text Fields username

                      TextField(
                        controller: nameController,
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
                           // labelText:  "First & Last Name",
                            label: Text("Username")),
                        textAlign: TextAlign.center,

                      ),
                    ), Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15,top: 20),
                      child:

                      /// Text Fields email

                      TextField(
                        controller: emailController,
                        cursorColor: Colors.redAccent,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
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
                            label: Text("Email Id")),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15,top: 20),
                      child:

                      /// Text Fields password

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
                            label: Text("Password"),
                          //hintText: "password should be strong like- Ayghy#24@P",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 15,),

                    /// buttons

                    Align(alignment: Alignment.bottomCenter,
                      child: MaterialButton(
                        onPressed: () {
                          registerUser();
                         // Get.to(Food_login());
                        },
                        child: Text("SignIn",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                        elevation: 9,
                        shape: StadiumBorder(
                          side: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        height: 50,
                        minWidth: 150,
                        splashColor: Colors.redAccent,
                      ),
                    ),
                  ],
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

                    TextButton(
                      onPressed: () {
                        Get.to(Food_login());
                      },
                      child: Text("already have an account Login ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 10),),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  void registerUser() {
    String email=emailController.text.trim();
    String pass=passController.text.trim();
    FirebaseFunctions().signUpUser(email:email,pwd:pass).then((response){
      if(response==null){
        Get.to(Food_login());
      }else{
        Get.snackbar("Registration Erorr",response);
      }
    });
  }
}
