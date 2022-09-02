import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:talabati_pro/newFoodPage/newFoodpage.dart';

class newRes extends StatefulWidget {
  final String newResturantName;
  final String newResImge;
  final int newPrice;
  final int newDelever;
  final String newLoc;
  final String newrate;


  const newRes({
    required this.newResImge,
    required this.newResturantName,
    required this.newDelever,
    required this.newLoc,
    required this.newPrice,
    required this.newrate
  });

  @override
  State<newRes> createState() => _newResState();
}

class _newResState extends State<newRes> {
  final List food =[
    {
      "name": "Burger",
     "pic" : "imgs/p17.webp",


    },
    {
      "name": "Salmon",
      "pic" : "imgs/p18.webp",


    },
    {
      "name": "Break Fast",
      "pic" : "imgs/w7.webp",


    },
    {
      "name": "Chicken Steak",
      "pic" : "imgs/w6.jpeg",


    },
  ];
  final List price =[
    { "price" : 6000},
    {"price" : 15000},
    {"price" : 7000},
    {"price" : 5000},
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
          leading: GestureDetector(
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
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.width/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.newResImge), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.newResturantName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.red.shade900),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text(
                        widget.newLoc,
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Icon(
                        Icons.location_on,
                        color: Colors.black54,


                      ),
                    ],
                  )
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "4.5",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                    padding: EdgeInsets.only(right: 10),

                    height: 60,
                    width: 100,
                    child: Image.asset(
                      "imgs/rating.png",
                    )),

              ],
            ),
            Container(
              height: 409,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Center(

                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "The Meals & dishes",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),

                  ),
                 ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: food.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(

          child: Column(

              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> newFoodPage(newFOODimg: food[index]["pic"], newFOODname:  food[index]["name"], newRRICE: price[index]["price"], newResNAME: widget.newResturantName, newLOCATION: widget.newLoc)));
                  },
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width -50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                          image: AssetImage(food[index]["pic"]),

                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Container(
                  color: Colors.grey.shade200,
                  width: MediaQuery.of(context).size.width -40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,


                        children: [

                          Text(
                            food[index]["name"],
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          Icon(
                            Icons.fastfood_rounded,
                            color: Colors.black54,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [

                          Text(
                            widget.newLoc,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 17,
                            ),
                          ),
                          Icon(
                            Icons.location_on,
                            color: Colors.black54,
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [

                          Text(
                            "${price[index]["price"]}",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 17,
                            ),
                          ),
                          Icon(
                            Icons.monetization_on,
                            color: Colors.black54,
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),

              ])
      );

    },
                 ),
                  // food("imgs/p17.webp",5000,  "Burger",widget.Loc),
                  // food("imgs/p18.webp",14000,  "Salamon",widget.Loc),
                  // food("imgs/w7.webp",7000, "Break Fast",widget.Loc),
                  // food("imgs/w6.jpeg",6000,  "Chicken Steak",widget.Loc)
                ],
              ),
            )
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
        )
    );
  }


}
