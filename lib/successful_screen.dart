
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            const SizedBox(height:90,),
            SvgPicture.asset('assets/images/successful.svg',
            width: 269.08,
            height: 240.31,),
            const SizedBox(height: 35,),
            const Text('Your Order has been',
              style: TextStyle(color: Colors.black,fontSize: 28,
                  fontFamily: 'Poppins'),
            ),
            const Text('accepted',
              style: TextStyle(color: Colors.black,fontSize: 28,fontFamily:'Poppins'),
            ),
            const Text('Your items has been placcd and is on',
              style: TextStyle(color: Colors.grey,fontSize: 16,
                  fontFamily: 'Poppins'),
            ),
            const Text('it’s way to being processed',
              style: TextStyle(color: Colors.grey,fontSize: 16,
                  fontFamily: 'Poppins'),
            ),

            const SizedBox(height:90,),
            Container(
              width: 300,
              height: 65,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 83, 177, 117),
                borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(20),
                    bottomStart: Radius.circular(20),
                    topEnd: Radius.circular(20),
                    topStart: Radius.circular(20)),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Track Order',
                    style: TextStyle(
                        color: Colors.white, fontSize: 18),
                  )),
            ),
            Container(
              width: 300,
              height: 65,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(20),
                    bottomStart: Radius.circular(20),
                    topEnd: Radius.circular(20),
                    topStart: Radius.circular(20)),
              ),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Back to home',
                    style: TextStyle(
                        color: Colors.black, fontSize: 18),
                  )),
            ),




          ],
        ),
      ),

    );
  }
}
