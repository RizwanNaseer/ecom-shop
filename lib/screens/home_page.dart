// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_comm/screens/auth_ui/signin_page.dart';
import 'package:my_comm/utils/app_constants.dart';
import 'package:my_comm/widgets/header.dart';
import 'package:my_comm/widgets/my_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstants.mainColor,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(child: Header(title: "Welcome To App")),
          Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.only(top: 45),
                child: Column(
                  children: [
                    Text(
                      "Happy Shopping",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    MyButton(
                      title: "SignIn With Google",
                      btnIcon: Image.asset(
                        'assets/images/google.png',
                        scale: 5,
                      ),
                      onPress: () {},
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    MyButton(
                      title: "SignIn With Email",
                      btnIcon: Icon(
                        Icons.email,
                        size: 50,
                        color: AppConstants.textColor,
                      ),
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SigninPage(),
                            ));
                      },
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
