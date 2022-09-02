import 'package:flutter/material.dart';

import '../newRegister/newRegister.dart';


class newSplash extends StatefulWidget {
  const newSplash({Key? key}) : super(key: key);

  @override
  State<newSplash> createState() => _newSplashState();
}

class _newSplashState extends State<newSplash> {
  Future Delay() async {
    await new Future.delayed(const Duration(seconds: 4   ));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => newRegister()),
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
