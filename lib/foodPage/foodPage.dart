import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
//import 'package:talabati_pro/resPage/resPage.dart';

class foodPage extends StatefulWidget {
  final String FOODimg;

  final String FOODname;
  final int RRICE;
  final String ResNAME;
  final String LOCATION;

  const foodPage({
    required this.FOODimg,
    required this.FOODname,
    required this.RRICE,
    required this.ResNAME,
    required this.LOCATION,
  });

  @override
  State<foodPage> createState() => _foodPageState();
}

class _foodPageState extends State<foodPage> {
  int number = 1;
  int Price =4000;
  int p = 4000;

  @override
  Widget build(BuildContext context) {
  //  int finalPrice = widget.RRICE;
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
          leading:
      GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.grey.shade900,
              ),
      ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(widget.FOODimg),
              )),
              child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 200,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey, width: 2),
                        ),
                        width: MediaQuery.of(context).size.width - 60,
                        height: 520,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 30,
                                  width: MediaQuery.of(context).size.width / 3,
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                  child: Text(
                                    widget.ResNAME,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.red.shade700),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.delivery_dining),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "delivery price ${widget.RRICE}",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.tag_faces_rounded),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Good",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time_filled),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Expected delivery time from\n 30 min-60 min ",
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      widget.LOCATION,
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  height: 30,
                                  width:
                                      MediaQuery.of(context).size.width - 100,
                                  child: Text(
                                    widget.FOODname,
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.red.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  height: 70,
                                  width: MediaQuery.of(context).size.width - 50,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.shade300,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            "Additions",
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.red.shade700),
                                          ),
                                          Text(
                                            "Optional",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.arrow_circle_up_outlined),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Special instruction",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  height: 65,
                                  width: MediaQuery.of(context).size.width - 50,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.grey.shade300,
                                  ),
                                  child: Text(
                                    "If you have any comments rgarding the order, please write in here",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
                padding: EdgeInsets.only(top: 300),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                number++;
                                Price = Price + Price;
                              });
                            },
                            child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Icon(
                                  Icons.add,
                                  size: 20,
                                ))),
                        Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "$number",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            )),
                        number > 0
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    number--;
                                    Price = Price - p;
                                  });
                                },
                                child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade400,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Icon(
                                      Icons.minimize_sharp,
                                      size: 20,
                                    )))
                            : Container()
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "$Price",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.red.shade700,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 30,
                      width: MediaQuery.of(context).size.width - 100,
                      decoration: BoxDecoration(
                        color: Colors.red.shade700,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: Text(
                        "Add To Basket",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                    ),
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
}
