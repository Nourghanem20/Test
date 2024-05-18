import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled13/component/cart_model.dart';

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
              padding: EdgeInsetsDirectional.only(start: 0, end: 0, top: 0),
              height: kToolbarHeight,
              alignment: Alignment.center,
              child: Text(
                'My Cart',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Divider(),
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
                        SizedBox(
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
                        SizedBox(
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
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                cart[index].title == 'Ginger'
                                    ? SizedBox(width: 150)
                                    : SizedBox(
                                        width: 80,
                                      ), //
                                SvgPicture.asset('assets/images/exit.svg')
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              cart[index].quantity,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
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
                                SizedBox(
                                  width: 20,
                                ),
                                Text(cart[index].counter.toString()),
                                SizedBox(
                                  width: 20,
                                ),
                                SvgPicture.asset(
                                  'assets/images/plusWhite.svg',
                                  height: 40,
                                  width: 40,
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Text(
                                  cart[0].price,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 18),
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
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SingleChildScrollView(
                          child: SizedBox(
                            height: 700,
                            width: 500,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Checkout',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    SizedBox(
                                      width: 200,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/exit.svg',
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  indent: 10.0,
                                  endIndent: 20.0,
                                  thickness: 1,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Delivery',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 120,
                                    ),
                                    Text(
                                      'Select Method',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    IconButton(
                                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined))
                                  ],
                                ),
                                const Divider(
                                  indent: 10.0,
                                  endIndent: 20.0,
                                  thickness: 1,

                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'Pament',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 18),
                                    ),
                                    SizedBox(
                                      width: 200,
                                    ),
                                    SvgPicture.asset('assets/images/visa.svg'),
                                    IconButton(
                                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined))
                                  ],
                                ),
                                const Divider(
                                  indent: 10.0,
                                  endIndent: 20.0,
                                  thickness: 1,
                                ),
                                Row(children: [
                                  SizedBox(width: 15,),

                                  Text('Promo Code',style: TextStyle(color: Colors.grey,fontSize: 18),),
                                  SizedBox(width: 94,),
                                  Text('Pick discount',style: TextStyle(fontSize: 16),),
                                  IconButton(onPressed:(){}, icon:Icon(Icons.arrow_forward_ios_outlined))
                                ],),
                                const Divider(
                                  indent: 10.0,
                                  endIndent: 20.0,
                                  thickness: 1,
                                ),
                                Row(children: [
                                  SizedBox(width: 15,),

                                  Text('Total Cost',style: TextStyle(color: Colors.grey,fontSize: 18),),
                                  SizedBox(width: 160,),
                                  Text('\$13.97',style: TextStyle(fontSize: 16),),
                                  IconButton(onPressed:(){}, icon:Icon(Icons.arrow_forward_ios_outlined))
                                ],),
                                Divider(
                                  indent: 10.0,
                                  endIndent: 20.0,
                                  thickness: 1,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 10,),
                                    Text('By placing an order you agree to our \n'
                                      'Terms And Conditions',style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey
                                    ),),
                                  ],
                                ),
                                SizedBox(height: 10,),
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
                                      onPressed: () {

                                      },
                                      child: const Text(
                                        'Place Order',
                                        style: TextStyle(color: Colors.white, fontSize: 18),
                                      )),
                                )


                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text(
                    'Go to Checkout',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            )

          ],
        ),
      ),
    );
  }
}
