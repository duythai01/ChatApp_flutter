// ignore_for_file: deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_chat/constants.dart';

import 'login_screen/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 9 * kDefaultPadding),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo_chat-removebg-preview (2).png",
                  scale: 3,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Text(
                    "Welcome to CHAT, \n We Believe in Service, and you Know that",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: kDefaultPadding),
                  child: Container(
                    width: kDefaultPadding * 6,
                    child: TextButton(
                        onPressed: () => Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const LoginScreen(),
                              ),
                              (route) => false,
                            ),
                         style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.amber),
                          shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(14),
                              side: const BorderSide(color: Colors.amber)),
                          )),
                        child: Text("Skip",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
