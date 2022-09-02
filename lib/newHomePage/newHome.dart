import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../newResturantPage/newRes.dart';

class newHome extends StatefulWidget {
  const newHome({Key? key}) : super(key: key);

  @override
  State<newHome> createState() => _newHomeState();
}

class _newHomeState extends State<newHome> {
  final List pic = [
    {
      "path": "imgs/p3.png",
      "name": "Resturant",
    },
    {
      "path": "imgs/p4.png",
      "name": "Blushy",
    },
    {"path": "imgs/p14.png", "name": "Credit Card"},
    {"path": "imgs/flower.png", "name": "Flowers"},
    {"path": "imgs/nuts.png", "name": "Nuts"},
    {"path": "imgs/p11.png", "name": "Food Supplies"},
    {"path": "imgs/p8.png", "name": "Breakfast"},
    {"path": "imgs/p9.png", "name": "Coffee"},
    {"path": "imgs/p2.png", "name": "Fruit & Veg"},
    {"path": "imgs/p5.png", "name": "Diet Food"},
    {"path": "imgs/p21.png", "name": "Library"},
    {"path": "imgs/p13.png", "name": "Pastry"},
    {"path": "imgs/p7.png", "name": "Sweets"},
    {"path": "imgs/p10.png", "name": "Sea Food"},
    {"path": "imgs/meat.png", "name": "Meat"},
    {"path": "imgs/p12.png", "name": "Ice Creams"},
    {"path": "imgs/p27.png", "name": "Market"},
  ];
  final List resturants = [
    {"path": "imgs/p15.webp", "name": "Chilli House"},
    {"path": "imgs/20.webp", "name": "Vitamin"},
    {"path": "imgs/p16.webp", "name": "Tasty"},
  ];
  final List info = [
    {"name": "DISCOUNTS", "icon": "imgs/p23.png"},
    {"name": "ALL", "icon": "imgs/28.png"},
    {"name": "NEW", "icon": "imgs/p22.png"},
    {"name": "WALLET", "icon": "imgs/p24.png"},
    {"name": "FREE DELIVERY", "icon": "imgs/p25.png"},
    {"name": "EXCLUSIVE", "icon": "imgs/p26.png"},
  ];
  final List order = [
    {
      "ResName": "PIZZA PIZZA",
      "location": "Mansoor",
      "rating": "Extra",
      "pic": "imgs/pizza.webp"
    },
    {
      "ResName": "ROYAL",
      "location": "Zayoona",
      "rating": "Fine",
      "pic": "imgs/pics.webp"
    },
    {
      "ResName": "BURGERAT",
      "location": "Karrada",
      "rating": "Good",
      "pic": "imgs/p19.webp"
    },
    {
      "ResName": "CHILLI HOUSE",
      "location": "Jadriya",
      "rating": "Fine",
      "pic": "imgs/p17.webp"
    },
    {
      "ResName": "BURGER KING",
      "location": "Karrada",
      "rating": "Good",
      "pic": "imgs/new.webp"
    },
  ];
  final List prices = [
    {"deliver": 5000, "price": 7000},
    {"deliver": 5000, "price": 10000},
    {"deliver": 3000, "price": 8000},
    {"deliver": 4500, "price": 7000},
    {"deliver": 3000, "price": 5000},
  ];

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

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: pic.length,
                itemBuilder: (BuildContext context, int index) {
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
                            image: DecorationImage(
                                image: AssetImage(
                                  pic[index]["path"],
                                ),
                                fit: BoxFit.fill)),
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Text(pic[index]["name"],
                                  style: TextStyle(
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  )),
                            ),
                          ]),
                    ],
                  );
                },
              ),
            ),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
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
                              child: ListView.builder(
                                itemCount: resturants.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                      // height: 300,
                                      width: MediaQuery.of(context).size.width -
                                          10,
                                      margin: EdgeInsets.only(left: 10),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              margin:
                                                  EdgeInsets.only(right: 10),
                                              height: 150,
                                              width: 400,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          resturants[index]
                                                              ["path"]),
                                                      fit: BoxFit.cover)),
                                            ),
                                            Container(
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 20),
                                                      child: Text(
                                                          resturants[index]
                                                              ["name"],
                                                          style: TextStyle(
                                                              color: Colors.grey
                                                                  .shade900,
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ),
                                                  ]),
                                            ),
                                          ]));
                                },
                                // resturant("Chilli house", "imgs/p15.webp"),
                                // resturant("vitamin", "imgs/20.webp"),
                                // resturant("testy", "imgs/p16.webp"),
                              ),
                            ),
                            Container(
                              height: 44,
                              width: MediaQuery.of(context).size.width,
                              child: ListView.builder(
                                itemCount: info.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.grey.shade400,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(info[index]["icon"]),
                                          Text(
                                            info[index]["name"],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },

                                // information(home, homeIcon),
                                // information(discount, discountIcon),
                                // information(wallet, walletIcon),
                                // information(gift, giftIcon),
                                // information(star, starIcon),
                                // information(neew, neewIcon),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 400
                             , child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: order.length,
                                  scrollDirection: Axis.vertical,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Container(

                                        child: Column(children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Stack(
                                          alignment: AlignmentDirectional.topEnd,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            newRes(
                                                              newResImge:
                                                                  order[index]
                                                                      ["pic"],
                                                              newResturantName:
                                                                  order[index]
                                                                      ["ResName"],
                                                              newDelever:
                                                                  order[index]
                                                                      ["deliver"],
                                                              newLoc: order[index]
                                                                  ["location"],
                                                              newPrice:
                                                                  prices[index]
                                                                      ["price"],
                                                              newrate:
                                                                  prices[index]
                                                                      ["rating"],
                                                            )));
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                height: 150,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        order[index]["pic"]),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                                child: Padding(
                                              padding: const EdgeInsets.all(12),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 50,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color: Colors.white,
                                                    ),
                                                    child: Text(
                                                      "Promo\nCode",
                                                      style: TextStyle(
                                                          color: Colors.red,
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 8,
                                                  ),
                                                  Container(
                                                    width: 30,
                                                    height: 30,
                                                    color: Colors.white,
                                                    child: Image.asset(
                                                        "imgs/bike.png"),
                                                  ),
                                                ],
                                              ),
                                            )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                order[index]["ResName"],
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Minimum Order${prices[index]["price"]}",
                                                style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "${prices[index]["deliver"]}",
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
                                                    order[index]["rating"],
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
                                                    order[index]["location"],
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
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Divider(
                                        thickness: 2,
                                        color: Colors.grey,
                                      )
                                    ]));
                                  }),
                            )
                          ],
                        ),
                      );

                      // order("imgs/pizza.webp", "PIZZA PIZZA", 5000, "Mansoor", "Good", 4500),
                      // order("imgs/pics.webp", "ROYAL", 10000, "Zayoona", "Fine", 3000),
                      // order("imgs/p19.webp", "BURGERAT", 6000, "Karrada", "Extra", 5000),
                      // order("imgs/p17.webp", "CHILLI HOUSE", 4000, "Jadriya", "Good", 4000),
                      // order("imgs/new.webp", "BURGER KING", 6000, "Karrada", "Fine", 3500),
                    }))
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
}
