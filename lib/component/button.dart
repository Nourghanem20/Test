import 'package:flutter/material.dart';

// Color.fromARGB(255, 83, 177, 117)
Widget buttonText(
    {required String title,
    required Color colorGround,
    required Color colorTitle,
    VoidCallback? onTap}) =>Container(
    width: 300,
    height: 65,
    decoration: BoxDecoration(
      color: colorGround,
      borderRadius: const BorderRadiusDirectional.only(
          bottomEnd: Radius.circular(20),
          bottomStart: Radius.circular(20),
          topEnd: Radius.circular(20),
          topStart: Radius.circular(20)),
    ),
    child: TextButton(
        onPressed: () {
        },
        child: Text(
          title,
          style: TextStyle(color: colorTitle, fontSize: 18),
        )),
  );

