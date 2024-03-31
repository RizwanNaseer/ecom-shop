import 'package:flutter/material.dart';

import '../utils/app_constants.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(color: AppConstants.mainColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  color: AppConstants.textColor,
                  fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/cart.png",
              scale: 4,
            )
          ],
        ));
  }
}
