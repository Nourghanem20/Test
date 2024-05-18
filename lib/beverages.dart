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
              InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          width: 500,
                          height: 500,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Add',
                                    style: TextStyle(fontSize: 24,fontFamily: 'Poppins'),

                                  ),
                                  const SizedBox(
                                    width: 260,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/exit.svg',
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              const Divider(
                                indent: 10.0,
                                endIndent: 20.0,
                                thickness: 1,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Name',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18,fontFamily: 'Poppins')),
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              const Divider(
                                indent: 10.0,
                                endIndent: 20.0,
                                thickness: 1,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Description',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18,fontFamily: 'Poppins')),
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              const Divider(
                                indent: 10.0,
                                endIndent: 20.0,
                                thickness: 1,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Price',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18,fontFamily: 'Poppins')),
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              const Divider(
                                indent: 10.0,
                                endIndent: 20.0,
                                thickness: 1,
                              ),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Image',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18,fontFamily: 'Poppins')),
                                  SizedBox(width: 230,),
                                  IconButton(onPressed:(){}, icon:Icon(Icons.arrow_forward_ios_outlined ))
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              const Divider(
                                indent: 10.0,
                                endIndent: 20.0,
                                thickness: 1,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
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
                                      'Add Item',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    )),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: SvgPicture.asset('assets/images/plus.svg'))
            ],
          ),
          centerTitle: true),
      body: Container(
        padding: const EdgeInsetsDirectional.all(17),
        child: GridView.builder(
          shrinkWrap: true,
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
                            fontSize: 12,fontWeight: FontWeight.bold, fontFamily: 'Poppins'),
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
                        onTap: () {},
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
