
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/backGround.png'),
          fit: BoxFit.fill

        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const SizedBox(height: 300,),
              SvgPicture.asset('assets/images/logo.svg'),
              const Text('Welcome',
              style: TextStyle(color: Colors.white,fontSize: 48,
              fontFamily: 'Poppins'),
              ),
              const Text('to our store',
                style: TextStyle(color: Colors.white,fontSize: 48,fontFamily:'Poppins'),
              ),
              const Text('Ger your groceries in as fast as one hour',
              style: TextStyle(fontSize: 16,color: Colors.grey),),
              const SizedBox(height: 20,),
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
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white, fontSize: 18),
                    )),
              )



            ],
          ),
        ),

      ),
    );
  }
}
