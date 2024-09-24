import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarosalSliderHome extends StatelessWidget {

  List<String> caroslimages = [
    "assets/images/Food card Logo.png",
   "assets/images/Meal-Card-Banner carsol2.jpg",
   "assets/images/carsol1.jpg",
   "assets/images/carosalImg/c2.jpg",
    //"assets/images/carosalImg/dish.png",
   // "assets/images/carosalImg/dish 2.png",
   // "assets/images/carosalImg/dish 3.png",
   // "assets/images/carosalImg/cardimgs.png"


  ];


  @override
  Widget build(BuildContext context) {
    return   SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CarouselSlider(
                items: List.generate(caroslimages.length, (index) {
                  return Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.yellowAccent,
                              blurRadius: 6,
                              blurStyle: BlurStyle.normal)
                        ],
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(caroslimages[index]))),
                  );
                }),
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: .8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration:
                  const Duration(milliseconds: 500),
                  autoPlayCurve: Curves.linear,
                  enlargeCenterPage: true,
                  enlargeFactor: 1,
                  scrollDirection: Axis.horizontal,
                )),
          ],
        ),
      ),
    );
  }
}
