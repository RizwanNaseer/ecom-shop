import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final Icon myIcon;
  final String title;
  final bool pass;
  const TextFields(
      {super.key,
      required this.title,
      required this.myIcon,
      required this.pass});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: pass,
      decoration: InputDecoration(
          prefixIcon: myIcon,
          label: Text(title),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
