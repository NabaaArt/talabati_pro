import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:talabati_pro/resPage/resPage.dart';

import '../data/data.dart';

class HomePage extends StatefulWidget {

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
            ),
          ],
          elevation: 0,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Baghdad",
                style: TextStyle(color: Colors.grey.shade900),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.grey.shade900,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 6, right: 20, bottom: 6, left: 10),
                      child: Text(
                        "Most popular resturants",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 250,
                      color: Colors.red,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(

                        scrollDirection: Axis.horizontal,
                        children: [
                          resturant("Chilli house", "imgs/p15.webp"),
                          resturant("vitamin", "imgs/20.webp"),
                          resturant("testy", "imgs/p16.webp"),
                        ],
                      ),
                    ),
                    Container(
                      height: 44,
                      width: MediaQuery.of(context).size.width,
                      child: ListView(

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
                order("imgs/pizza.webp", "PIZZA PIZZA", 5000, "Mansoor", "Good", 4500),
                order("imgs/pics.webp", "ROYAL", 10000, "Zayoona", "Fine", 3000),
                order("imgs/p19.webp", "BURGERAT", 6000, "Karrada", "Extra", 5000),
                order("imgs/p17.webp", "CHILLI HOUSE", 4000, "Jadriya", "Good", 4000),
                order("imgs/new.webp", "BURGER KING", 6000, "Karrada", "Fine", 3500),
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
                  icon: (Icons.home_filled),
                  text: 'Home',
                ),
                GButton(
                  icon: (Icons.search),
                  text: 'Wallet',
                ),
                GButton(
                  icon: (Icons.favorite_border),
                  text: 'Orders',
                ),

                GButton(
                  icon: (Icons.circle),
                  text: 'Account',
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
     // height: 300,
      width: MediaQuery.of(context).size.width-10,
      margin: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(right: 10),
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image:
                      DecorationImage(image: AssetImage(pic), fit: BoxFit.cover)),
            ),

          Container(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(namer,
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ]
    ),
          ),
     ]
      )

    );
  }

  Container information(String info, String icon) {
    return Container(
      width: MediaQuery.of(context).size.width/3,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey.shade400,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(icon),
            Text(
              info,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
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
            GestureDetector(
              onTap: ()
              {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> resPage(ResImge: pics, ResturantName:  name,Loc: location,Price: price,rate: rating,Delever: delver,)));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(pics),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
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
                    width: 50,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                    ),
                    child: Text("Promo\nCode",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 13,
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
                name,
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
              ),
          Text(
            "Minimum Order $price",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 20,
            ),
          ),

        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            children: [
              Text(
                "$delver",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                ),
              ),
              Icon(
                Icons.motorcycle_rounded,
                color: Colors.black54,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "$rating",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                ),
              ),
              Icon(
                Icons.tag_faces,
                color: Colors.black54,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "$location",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black54,
                ),
              ),
              Icon(
                Icons.location_on,
                color: Colors.black54,

              ),
            ],

          ),

        ]),
      ),
          SizedBox(height: 20,),
          Divider(
            thickness: 2,
            color: Colors.grey,
          )
    ])

    );
  }
}
