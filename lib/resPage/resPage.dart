import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:talabati_pro/foodPage/foodPage.dart';

class resPage extends StatefulWidget {
  final String ResturantName;
  final String ResImge;
  final int Price;
  final int Delever;
  final String Loc;
  final String rate;


  const resPage({
    required this.ResImge,
    required this.ResturantName,
    required this.Delever,
    required this.Loc,
    required this.Price,
    required this.rate
  });

  @override
  State<resPage> createState() => _resPageState();
}

class _resPageState extends State<resPage> {

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
          leading: Icon(
            Icons.search,
            color: Colors.grey.shade900,
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
                    image: AssetImage(widget.ResImge), fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.ResturantName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.red.shade900),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Text(
                        widget.Loc,
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
              child: ListView(
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
                  food("imgs/p17.webp",5000,  "Burger",widget.Loc),
                  food("imgs/p18.webp",14000,  "Salamon",widget.Loc),
                  food("imgs/w7.webp",7000, "Break Fast",widget.Loc),
                  food("imgs/w6.jpeg",6000,  "Chicken Steak",widget.Loc)
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

  Container food(String foodImg, int price,  String FoodName, String LOcation) {
    return Container(

        child: Column(

            children: [
      GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=> foodPage(FOODimg: foodImg, FOODname: FoodName, RRICE: price,ResNAME: widget.ResturantName,LOCATION:LOcation,)));
        },
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width -50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
              image: DecorationImage(
            image: AssetImage(foodImg),

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
                      FoodName,
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
                  LOcation,
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
                  "$price",
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
  }
}
