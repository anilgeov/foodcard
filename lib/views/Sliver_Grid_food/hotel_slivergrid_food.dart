import 'package:flutter/material.dart';
import 'package:foodcard/model/Hotel_data.dart';

class SliverGridFood extends StatelessWidget {
  // List<String> caroslimages = [
  //   "assets/images/Meal-Card-Banner carsol2.jpg",
  //   "assets/images/carsol1.jpg",
  //   "assets/images/logo tras.png",
  //   "assets/images/burggerfood.png",
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
            childCount: hotellist.length,
            (context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    color: Colors.white10,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white30,
                              spreadRadius: 3,
                              blurRadius: 8)
                        ],
                       // borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 110,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image:
                                          AssetImage(hotellist[index].image!)))

                              //Image(image: AssetImage(hotellist[index].image!)
                              ),
                          Center(
                            child: Text(
                              hotellist[index].name!,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              hotellist[index].location!,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:5,left: 10),
                            child: Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  MaterialButton( shape: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                                      height: 15,
                                      child: Text("View"),
                                      color: Colors.white,
                                      onPressed: () {}),
                                  CircleAvatar(radius: 10,
                                    backgroundColor: Colors.red,
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 20,)
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 200,
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 2,
            mainAxisSpacing: 5));
  }
}
