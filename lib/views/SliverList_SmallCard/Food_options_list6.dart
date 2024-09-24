import 'package:flutter/material.dart';

class FoodOptionsList6 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Container(height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,itemCount: 1,
            itemBuilder:(context, index) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ///card 1
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 70,
                      width:70,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          image: DecorationImage(fit: BoxFit.cover,
                              image: AssetImage("assets/images/cardimg/2.png")),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  ///card 2
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          image: DecorationImage(fit: BoxFit.fill,
                              image: AssetImage("assets/images/cardimg/3.png")),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  ///card 3
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          image: DecorationImage(fit: BoxFit.fill,
                              image: AssetImage("assets/images/cardimg/4.png")),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  ///card 4
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          image: DecorationImage(fit: BoxFit.fill,
                              image: AssetImage("assets/images/cardimg/5.png")),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                  ///card
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          image: DecorationImage(fit: BoxFit.fill,
                              image: AssetImage("assets/images/cardimg/6.png")),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ],);
            },),),
      ),
    );
  }
}
