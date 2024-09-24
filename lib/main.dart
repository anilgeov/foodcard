import 'package:firebase_core/firebase_core.dart';
import 'package:foodcard/views/Screens/food_splash.dart';
import 'package:foodcard/views/Screens/home_food.dart';
import 'package:foodcard/views/Screens/tokens_food.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyCDsNVd6wtazt4_86YuBVWEwgF3TnJQDk4",
        appId: "1:510286580905:android:0c078a07272c0b988aadb8",
        messagingSenderId:" ",
        storageBucket:"foody-card-24.appspot.com" ,
        projectId:"foody-card-24")
  );
  runApp(FoodyCard());
}

class FoodyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        // MultiProvider(
        //     providers: [
        //       ChangeNotifierProvider(
        //         create: (context) => SplashscreenProvider(),
        //       ),
        //       //ChangeNotifierProvider(create: (context) => HomeScreenProvider(),),
        //       ChangeNotifierProvider(
        //         create: (context) => BottomnavController(),
        //       ),
        //
        //     ],
        //child:
        GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashFood(),
     // TokensFood(),
      //FoodHomePage(),
           // ,

      // Consumer<SplashscreenProvider>(
      //   builder: (context, splashScreenProvider, widget) {
      //     return splashScreenProvider.isLoading
      //         ? SplashFood()
      //         : FoodHomePage();
      //  },)
      //)
    );
  }
}
