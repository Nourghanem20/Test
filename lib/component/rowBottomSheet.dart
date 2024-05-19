import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget bottomSheetRow({
  required String title,
  required String titleSecond,
}) // Delivery //Select Method
    =>
    Row(
      children: [
        const SizedBox(
          width: 15,
        ),
         Text(
          title,
          style: const TextStyle(color: Colors.grey, fontSize: 18),
        ),
        const SizedBox(
          width: 120,
        ),
         Text(
          titleSecond,
          style: const TextStyle(fontSize: 16),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios_outlined))
      ],
    );
