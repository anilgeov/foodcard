import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foodcard/controller/splashscreen_controller.dart';
import 'package:provider/provider.dart';

import 'firstpage_food.dart';

class SplashFood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final splashScreenProvider=Provider.of<SplashscreenProvider>(context);
    // Future.delayed(Duration(seconds: 3),() {
      // splashScreenProvider.setLoading(false);
    // },);
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(

          child: FlutterSplashScreen.fadeIn(
            animationDuration: const Duration(seconds: 2),
            duration:  Duration(seconds: 3),
       gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Colors.red,
              Colors.white70,
            ],),
        animationCurve: Curves.decelerate,

        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          debugPrint("On End");
        },
        childWidget: SizedBox(
          height: 200,
          width: 200,

          child: Image.asset("assets/images/logo tras.png"),

        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        nextScreen: Firstpage_food(),
      )),
    );
  }
}
