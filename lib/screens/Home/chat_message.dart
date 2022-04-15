import 'package:flutter/material.dart';
import 'package:flutter_chat/components/Icons/home_icons.dart';
import 'package:flutter_chat/models/chat.dart';
import 'package:flutter_chat/providers/settings.dart';

import 'chat_description.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    Key? key,
    required this.size,
    required this.settingsProvider,
  }) : super(key: key);

  final Size size;
  final SettingsProvider settingsProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height - size.height * 0.14 - size.height * 0.1 - 67,
      width: size.width,
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      margin: const EdgeInsets.only(top: 10),
      decoration:  BoxDecoration(
      color: settingsProvider.darkMode ? Colors.black54 : Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: chatsData.length,
            itemBuilder: (context, index) => BuildChats(
                  size: size,
                  index: index,
                  settingsProvider: settingsProvider,
                )),
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
        height: size.height * 0.06,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: const TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
              borderSide: BorderSide(color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            hintText: "Tim kiem",
            hintStyle: TextStyle(fontSize: 17, color: Colors.black45),
            contentPadding: EdgeInsets.only(left: 10, right: 10, top: 10),
            prefixIcon: Icon(Home.search),
          ),
        ));
  }
}
