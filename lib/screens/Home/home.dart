// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat/models/Friend.dart';
import 'package:flutter_chat/models/chat.dart';

import 'friend_active.dart';
import 'inf_description.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //header
        children: [
          SizedBox(
              height: size.height * 0.1,
              // color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    // user
                    UserInformation(),
                    // search and add
                    SearchAndAdd()
                  ],
                ),
              )),
          // active friend
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: size.height * 0.14,
                  // color: Colors.amberAccent,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: friendsList.length,
                      itemBuilder: (context, index) =>
                          BuildStoryBoard(size, index))),
              Stack(children: [
                Container(
                  height:
                      size.height - size.height * 0.14 - size.height * 0.1 - 48,
                  width: size.width,
                  padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
                  margin: const EdgeInsets.only(top: 20),
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
                ),
                Container(
                    margin: const EdgeInsets.only(top: 24, left: 16),
                    child: const Text(
                      "Chats",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                    )),
              ]),
            ],
          )
        ],
      )),
    );
  }
}
