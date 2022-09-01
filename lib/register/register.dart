import 'package:flutter/material.dart';
import 'package:talabati_pro/data/data.dart';

import '../home/home.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              //     mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 100),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset("imgs/talabaty.png"),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'enter email',
                      counterText: "0/15",
                      counterStyle: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade300),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Phone NUmber',
                      counterText: "0/11",
                      counterStyle: TextStyle(color: Colors.red),
                      //  labelText: '',
                    ),
                  ),
                ),
                Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Text(
                          " If you have the company code . press here",
                          style: TextStyle(color: Colors.red, fontSize: 17),
                        )),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.red,
                    )
                  ],
                ),
                Visibility(
                  visible: isVisible,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey.shade300),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Joining code',

                        //  labelText: '',
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    });
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red),
                    child: Center(
                        child: Text(
                      "Next",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
