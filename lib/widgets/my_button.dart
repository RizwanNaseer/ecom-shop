import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_comm/utils/app_constants.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Widget btnIcon;
  final void Function() onPress;
  const MyButton(
      {super.key,
      required this.title,
      required this.btnIcon,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 70,
      decoration: BoxDecoration(
          color: AppConstants.mainColor,
          borderRadius: BorderRadius.circular(20)),
      child: TextButton.icon(
          onPressed: onPress,
          icon: btnIcon,
          label: Text(
            title,
            style: TextStyle(
                fontSize: 18,
                color: AppConstants.textColor,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
