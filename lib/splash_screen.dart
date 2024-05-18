
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF53B175) ,
      body:Center(child: SvgPicture.asset('assets/images/splash.svg'))


    );
  }
}
