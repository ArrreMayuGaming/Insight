
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'commonuser/commongate.dart';

class SplashScreenPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
   
    return SplashScreen(
      seconds: 2,
      image: Image.asset(
        'assets/logo.png',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      photoSize: 100,
      navigateAfterSeconds: CommonGate(),
      useLoader: false,
    );
  }
}
