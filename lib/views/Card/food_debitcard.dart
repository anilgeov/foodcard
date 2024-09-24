import 'dart:math' as math;
import 'dart:ui';

import 'package:background_app_bar/background_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FoodCard extends StatelessWidget {
  const  FoodCard ({super.key});

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
            "Foody Card",
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontStyle: FontStyle.italic),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: 600,
                  foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.black.withOpacity(.8)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/atmbck.png"))),
                ),
                Positioned(
                    left: 30,
                    top: 30,
                    child: Text(
                      'Foody Card',
                      style:
                      GoogleFonts.caladea(fontSize: 30, color: Colors.white),
                    )),
                Positioned(
                    top: 40,
                    right: 50,
                    child: Transform.rotate(
                        angle: math.pi / 2,
                        child: Icon(
                          Icons.wifi,
                          size: 40,
                          color: Colors.grey[500],
                        ))),
                const Positioned(
                    left: 30,
                    top: 80,
                    child: Icon(
                      Icons.nfc,
                      color: Colors.grey,
                      size: 60,
                    )),
                Positioned(
                    bottom: 20,
                    left: 30,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '5412 7512 3412 3456',
                          style: GoogleFonts.caladea(
                              fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          'VALID THRU',
                          style: GoogleFonts.caladea(
                              fontSize: 5, color: Colors.white),
                        ),
                        Text(
                          "12/29",
                          style: GoogleFonts.caladea(
                              fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          'Anil.',
                          style: GoogleFonts.caladea(
                              fontSize: 20, color: Colors.white),
                        )
                      ],
                    )),
                Positioned(
                  right: 60,
                  top: 120,
                  child: Text(
                    "Debit",
                    style: GoogleFonts.caladea(fontSize: 20, color: Colors.white),
                  ),
                ),
                Positioned(
                    right: 40,
                    bottom: 30,
                    child: Image.asset(
                      "assets/icons/mastercard.png",
                      height: 80,
                      width: 100,
                    )),
                Positioned(
                  right: 40,
                  bottom: 20,
                  child: Text(
                    "mastercard",
                    style: GoogleFonts.caladea(fontSize: 20, color: Colors.white),
                  ),
                ),
                Positioned(
                  right: 30,
                  left: 50,
                  bottom: 10,
                  child: PopupMenuButton(tooltip: "Card Pin",
                    icon: Icon(Icons.key_outlined,size: 40,color: Colors.red,),
                    itemBuilder:(context) {
                    return [PopupMenuItem(child:Center(child: Text("Your PIN \n   4589")))];
                  },

                ),
        ),
              ],
            ),
          ),
        ));
  }
}
