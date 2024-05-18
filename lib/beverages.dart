import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled13/component/beverages_model.dart';

class Beverages extends StatelessWidget {
  const Beverages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BeveragesItem> beverages = [
      BeveragesItem(
          pathImage: 'assets/images/cola1.png',
          title: 'Diet Coke',
          ml: '355ml',
          price: '\$1.99'),
      BeveragesItem(
          pathImage: 'assets/images/cola2.png',
          title: 'Sprite Can',
          ml: '325ml',
          price: '\$1.50'),
      BeveragesItem(
          pathImage: 'assets/images/cola3.png',
          title: 'Apple & Grape Juice',
          ml: '2L',
          price: '\$5.99'),
      BeveragesItem(
          pathImage: 'assets/images/cola4.png',
          title: 'Orange Juice',
          ml: '2L',
          price: '\$8.99'),
      BeveragesItem(
          pathImage: 'assets/images/cola5.png',
          title: 'Coca Cola Can',
          ml: '325ml',
          price: '\$4.99'),
      BeveragesItem(
          pathImage: 'assets/images/cola1.png',
          title: 'Pepsi Can ',
          ml: '330ml',
          price: '\$4.99'),
    ];
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_ios_new_outlined)),
              const SizedBox(
                width: 90,
              ),
              const Text(
                'Beverages',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 67,
              ),
              InkWell(onTap:(){},child: SvgPicture.asset('assets/images/plus.svg'))
            ],
          ),
          centerTitle: true),
      body: Container(
        padding: const EdgeInsetsDirectional.all(17),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
          ),
          itemCount: beverages.length,
          itemBuilder: (context, index) {
            return Container(
              padding:
                  const EdgeInsetsDirectional.only(bottom: 2, start: 8, end: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              width: 200.32,
              height: 300.0,
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Image.asset(
                    beverages[index].pathImage,
                    width: 111.38,
                    height: 74.9,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        beverages[index].title.toString(),
                        style: const TextStyle(
                            fontSize: 14, fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        beverages[index].ml.toString(),
                        style: const TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'price: ${beverages[index].price.toString()}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: SvgPicture.asset(
                          'assets/images/plus.svg',
                          width: 30.67,
                          height: 30.67,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
