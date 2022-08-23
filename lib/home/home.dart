import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_outlined,
                color: Colors.grey.shade900,
              ),
            )
          ],
          elevation: 0,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_drop_down,
                color: Colors.grey.shade900,
              ),
              Text(
                "المنصور",
                style: TextStyle(color: Colors.grey.shade900),
              ),
            ],
          ),
          leading: Icon(
            Icons.search,
            color: Colors.grey.shade900,
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                children: [
                  pic(Resturant, ResturantIcon),
                  pic(blushy, blushyIcon),
                  pic(healthy, healthyIcon),
                  pic(market, marketIcon),
                  pic(sweets, sweetsIcon),
                  pic(veg, vegIcon),
                  pic(meat, meatIcon),
                  pic(seafood, seafoodIcon),
                  pic(meal, mealIcon),
                  pic(card, cardIcon),
                  pic(coffee, coffeeIcon),
                  pic(flower, flowerIcon),
                  pic(nuts, nutsIcon),
                  pic(icecream, icecreamIcon),
                  pic(breakfast, breakfastIcon),
                  pic(library, libraryIcon),
                  pic(pastry, pastryIcon),
                ],
              ),
            ),
            Expanded(
                child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 6, right: 20, bottom: 6, left: 10),
                      child: Text(
                        "المحلات الاكثر شيوعا",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 180,
                      color: Colors.red,
                    ),
                    Container(
                      height: 180,
                      width: 500,
                      child: ListView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          resturant(NameRest1, pic1),
                          resturant(NameRest2, pic2),
                          resturant(NameRest3, pic3),
                        ],
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 700,
                      child: ListView(
                        reverse: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                          information(home, homeIcon),
                          information(discount, discountIcon),
                          information(wallet, walletIcon),
                          information(gift, giftIcon),
                          information(star, starIcon),
                          information(neew, neewIcon),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                order(pics1, name1, price1, location1, rating1, delever1),
                order(pics2, name2, price2, location2, rating2, delever2),
                order(pics3, name3, price3, location3, rating3, delever3),
                order(pics4, name4, price4, location4, rating4, delever4),
                order(pics5, name1, price1, location1, rating1, delever1),
              ],
            ))
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.grey.shade200,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: GNav(
              activeColor: Colors.redAccent,
              gap: 10,
              backgroundColor: Colors.grey.shade200,
              color: Colors.grey.shade900,
              tabBackgroundColor: Colors.grey.shade100,
              padding: EdgeInsets.all(18),
              tabs: [
                GButton(
                  icon: (Icons.circle),
                  text: 'الحساب',
                ),
                GButton(
                  icon: (Icons.favorite_border),
                  text: 'الطلبات',
                ),
                GButton(
                  icon: (Icons.search),
                  text: 'المحفظة',
                ),
                GButton(
                  icon: (Icons.home_filled),
                  text: 'الرئيسية',
                ),
              ],
            ),
          ),
        ));
  }

  Column pic(String name, String icons) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 90,
          width: 90,
          decoration: BoxDecoration(
              color: Colors.redAccent.shade100,
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(icons), fit: BoxFit.fill)),
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text(name,
                    style: TextStyle(
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    )),
              ),
            ]),
      ],
    );
  }

  Container resturant(String namer, String pic) {
    return Container(
      height: 300,
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            height: 130,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:
                    DecorationImage(image: AssetImage(pic), fit: BoxFit.fill)),
          ),
          Container(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(namer,
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  Container information(String info, String icon) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(icon),
            Text(
              info,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }

  Container order(String pics, String name, int price, String location,
      String rating, int delver) {
    return Container(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Container(
              width: 400,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(pics),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Positioned(
                child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Text(
                      "بروموكود",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    color: Colors.white,
                    child: Image.asset("imgs/bike.png"),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "الحد الادنى للطلب $price",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
          ),
          Text(
            "هايزن",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
          )
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(children: [
          Text(
            "$delver",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
          ),
          Icon(
            Icons.motorcycle_rounded,
            color: Colors.black54,
          ),
          SizedBox(
            width: 80,
          ),
          Text(
            "$rating",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          Icon(
            Icons.tag_faces,
            color: Colors.black54,
          ),
          SizedBox(
            width: 80,
          ),
          Text(
            "$location",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
            ),
          ),
          Icon(
            Icons.location_on,
            color: Colors.black54,
          ),
        ]),
      ),
    ]));
  }
}
