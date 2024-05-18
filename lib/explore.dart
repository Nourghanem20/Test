import 'package:flutter/material.dart';
import 'package:untitled13/explore_model.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ExploreItem> exploreList = [
      ExploreItem(
          pathImage: 'assets/images/test1.png',
          title: 'Fresh Fruits  \n'
              '& Vegetable',
          light: const Color.fromARGB(255, 236, 246, 241),
          dark: const Color.fromARGB(255, 170, 215, 188)),
      ExploreItem(
          pathImage: 'assets/images/test2.png',
          title: 'Cooking Oil\n & Ghee',
          light: const Color.fromARGB(255, 253, 244, 237),
          dark: const Color.fromARGB(255, 251, 219, 189)),
      ExploreItem(
          pathImage: 'assets/images/test3.png',
          title: 'Meat & Fish',
          light: const Color.fromARGB(255, 251, 230, 227),
          dark: const Color.fromARGB(255, 247, 200, 191)),
      ExploreItem(
          pathImage: 'assets/images/test4.png',
          title: 'Bakery & Snacks',
          light: const Color.fromARGB(255, 242, 233, 246),
          dark: const Color.fromARGB(255, 218, 189, 229)),
      ExploreItem(
          pathImage: 'assets/images/test5.png',
          title: 'Dairy & Eggs',
          light: const Color.fromARGB(255, 252, 246, 228),
          dark: const Color.fromARGB(255, 251, 232, 174)),
      ExploreItem(
          pathImage: 'assets/images/test6.png',
          title: 'Beverages',
          light: const Color.fromARGB(255, 235, 245, 251),
          dark: const Color.fromARGB(255, 201, 230, 246)),
    ];
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 10,end: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
        ),
        itemCount: exploreList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: exploreList[index].dark),
              borderRadius: BorderRadius.circular(20),
              color: exploreList[index].light,
            ),
            width: 174.5,
            height: 189.11,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  exploreList[index].pathImage,
                  width: 111.38,
                  height: 74.9,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      exploreList[index].title.toString(),
                      style: const TextStyle(fontSize: 16,
                      fontFamily: 'Poppins'),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
