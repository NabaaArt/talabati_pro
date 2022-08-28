import 'package:flutter/material.dart';

import '../home/home.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  Future Delay() async {
    await new Future.delayed(const Duration(seconds: 1));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  void initState() {
    super.initState();
    Delay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 48, 59, 1),
      body: Center(
        child: Image.asset(
          "imgs/splash.jpeg",
          height: 150,
          width: 150,
        ),
      ),
    );
  }
}
