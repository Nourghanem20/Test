import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled13/component/button.dart';
import 'package:untitled13/component/cart_model.dart';
import 'package:untitled13/component/divider.dart';
import 'package:untitled13/component/rowBottomSheet.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CartItem> cart = [
      CartItem(
          pathImage: 'assets/images/myCart1.png',
          title: 'Bell Pepper Red',
          counter: 1,
          price: '\$4.99',
          quantity: '1kg,Price'),
      CartItem(
          pathImage: 'assets/images/myCart2.png',
          title: 'Egg Chicken Red',
          counter: 1,
          price: '\$1.99',
          quantity: '4pcs,Price'),
      CartItem(
          pathImage: 'assets/images/myCart3.png',
          title: 'Organic Bananas',
          counter: 1,
          price: '\$3.00',
          quantity: '12kg,Price'),
      CartItem(
          pathImage: 'assets/images/myCart4.png',
          title: 'Ginger',
          counter: 1,
          price: '\$2.99',
          quantity: '250gm,Price'),
    ];
    return SafeArea(
      child: Container(
        padding: EdgeInsetsDirectional.zero,
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsetsDirectional.only(start: 0, end: 0, top: 0),
              height: kToolbarHeight,
              alignment: Alignment.center,
              child: const Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => const Divider(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 362.92,
                    height: 96.98,
                    child: Row(
                      children: [
                        const SizedBox(
                          height: 6,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          cart[index].pathImage,
                          width: 72.39,
                          height: 65.04,
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  cart[index].title,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                cart[index].title == 'Ginger'
                                    ? const SizedBox(width: 150)
                                    : const SizedBox(
                                        width: 80,
                                      ), //
                                SvgPicture.asset('assets/images/exit.svg')
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              cart[index].quantity,
                              style: const TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/minus.svg',
                                  height: 40,
                                  width: 40,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(cart[index].counter.toString()),
                                const SizedBox(
                                  width: 20,
                                ),
                                SvgPicture.asset(
                                  'assets/images/plusWhite.svg',
                                  height: 40,
                                  width: 40,
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  cart[0].price,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          ],
                        ),

                        // IconButton(onPressed:(){}, icon:Icon(Icons.))
                      ],
                    ),
                  );
                },
                itemCount: cart.length,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            buttonText(
                title: 'Go to Checkout',
                colorGround: const Color.fromARGB(255, 83, 177, 117),
                colorTitle: Colors.white,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SingleChildScrollView(
                        child: SizedBox(
                          height: 700,
                          width: 500,
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
                                    'Checkout',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  const SizedBox(
                                    width: 200,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/exit.svg',
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              divider(),
                              bottomSheetRow(
                                  title: 'Delivery',
                                  titleSecond: 'Select Method'),
                              divider(),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Pament',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 18),
                                  ),
                                  const SizedBox(
                                    width: 200,
                                  ),
                                  SvgPicture.asset('assets/images/visa.svg'),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.arrow_forward_ios_outlined))
                                ],
                              ),
                              divider(),
                              bottomSheetRow(
                                  title: 'Promo Code',
                                  titleSecond: 'Pick discount'),
                             divider(),
                              bottomSheetRow(
                                  title: 'Total Cost', titleSecond: '\$13.97'),
                              divider(),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'By placing an order you agree to our \n'
                                    'Terms And Conditions',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              buttonText(
                                  title: 'Place Order',
                                  colorGround:
                                      const Color.fromARGB(255, 83, 177, 117),
                                  colorTitle: Colors.white)
                            ],
                          ),
                        ),
                      );
                    },
                  );
                })
          ],
        ),
      ),
    );
  }
}
