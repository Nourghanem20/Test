import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled13/component/button.dart';

class SuccessfulScreen extends StatelessWidget {
  const SuccessfulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 90,
            ),
            SvgPicture.asset(
              'assets/images/successful.svg',
              width: 269.08,
              height: 240.31,
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              'Your Order has been',
              style: TextStyle(
                  color: Colors.black, fontSize: 28, fontFamily: 'Poppins'),
            ),
            const Text(
              'accepted',
              style: TextStyle(
                  color: Colors.black, fontSize: 28, fontFamily: 'Poppins'),
            ),
            const Text(
              'Your items has been placcd and is on',
              style: TextStyle(
                  color: Colors.grey, fontSize: 16, fontFamily: 'Poppins'),
            ),
            const Text(
              'it’s way to being processed',
              style: TextStyle(
                  color: Colors.grey, fontSize: 16, fontFamily: 'Poppins'),
            ),
            const SizedBox(
              height: 90,
            ),
            buttonText(
                title: 'Track Order',
                colorGround: const Color.fromARGB(255, 83, 177, 117),
                colorTitle: Colors.white),
            buttonText(
                title: 'Back to home',
                colorGround: Colors.white,
                colorTitle: Colors.black)
          ],
        ),
      ),
    );
  }
}
