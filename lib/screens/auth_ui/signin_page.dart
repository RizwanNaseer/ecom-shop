import 'package:flutter/material.dart';
import 'package:my_comm/utils/app_constants.dart';
import 'package:my_comm/widgets/header.dart';
import 'package:my_comm/widgets/my_button.dart';
import 'package:my_comm/widgets/text_fields.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppConstants.mainColor,
      ),
      body: Column(
        children: [
          const Expanded(child: Header(title: "SignIn")),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const TextFields(
                      title: "Email",
                      myIcon: Icon(Icons.email),
                      pass: false,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const TextFields(
                      title: "Password",
                      myIcon: Icon(Icons.password),
                      pass: true,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Align(
                            alignment: Alignment.centerRight,
                            child: Text("Forgot Password?"))),
                    const SizedBox(
                      height: 30,
                    ),
                    MyButton(
                      title: "SignIn",
                      btnIcon: const Icon(Icons.arrow_right_sharp),
                      onPress: () {},
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Align(
                            alignment: Alignment.bottomRight, child: Text(""))),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
