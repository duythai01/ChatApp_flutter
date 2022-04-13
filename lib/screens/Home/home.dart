// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat/widgets/circle_btn.dart';

import 'chat_message.dart';
import 'stories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: BuildAppBar(size),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //header
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Story(size: size),
              SearchBar(size: size),
              ChatMessage(size: size),
            ],
          )
        ],
      )),
    );
  }

  AppBar BuildAppBar(Size size) {
    return AppBar(
      toolbarHeight: size.height * 0.1,
      backgroundColor: Colors.lightBlue[100],
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.only(left: 10),
        child: CircleBtnImage(
          image: Image.asset(
            "assets/images/user1.png",
            scale: 2,
          ),
          press: () {},
        ),
      ),
      title: RichText(
        text: const TextSpan(
            text: "Good morning \n",
            style: TextStyle(color: Colors.black87),
            children: [
              TextSpan(
                text: "Dao Duy Thai",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ]),
      ),
      actions: [
        CircleBtnIcon(
          colorBackground: Colors.grey.shade300,
          icon: const Icon(
            Icons.camera_alt,
            size: 28,
            color: Colors.black,
          ),
          press: () {},
        ),
        CircleBtnIcon(
          colorBackground: Colors.grey.shade300,
          icon: const Icon(Icons.add, size: 32, color: Colors.black),
          press: () {},
        )
      ],
    );
  }
}




