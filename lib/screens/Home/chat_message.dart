import 'package:flutter/material.dart';
import 'package:flutter_chat/components/Icons/home_icons.dart';
import 'package:flutter_chat/models/chat.dart';

import 'inf_description.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          size.height - size.height * 0.14 - size.height * 0.1 - 57,
      width: size.width,
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: chatsData.length,
            itemBuilder: (context, index) =>
                BuildChats(size: size, index: index)),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.05,
        margin: const EdgeInsets.symmetric(horizontal:5),
        child: const TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            hintText: "Tim kiem",
            hintStyle: TextStyle(fontSize: 17, color: Colors.black45),
            contentPadding: EdgeInsets.only(left:10,right:10,top: 10),
            prefixIcon: Icon(Home.search),
          ),
        ));
  }
}