// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat/components/Icons/icon_chat_icons.dart';
import 'package:flutter_chat/components/Icons/setting_icon_icons.dart';
import 'package:flutter_chat/models/chat.dart';
import 'package:flutter_chat/widgets/circle_btn.dart';

class ChatDetail extends StatelessWidget {
  final Chat chat_person;
  const ChatDetail({Key? key, required this.chat_person}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var heightAppbar = AppBar().preferredSize.height;

    var scaffold = Scaffold(
      appBar: BuildAppBarChatDetail(size, context),
      body: SafeArea(
          child: Stack(children: [
        SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                // content chat
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height - heightAppbar ,
                      color: Colors.amberAccent,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * 0.07,
            color: Colors.redAccent,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.blue),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.camera_alt, color: Colors.blue),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    SettingIcon.image,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(
                    IconChat.microphone,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                Container(
                  width: size.width * 0.37,
                  height: size.height * 0.05,
                  margin: const EdgeInsets.only(left: 5),
                  // color: Colors.green,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade300,
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        suffixIcon:
                            const Icon(Icons.mood_outlined, color: Colors.blue)),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    IconChat.send,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ])),
    );
    return scaffold;
  }

  AppBar BuildAppBarChatDetail(Size size, BuildContext context) {
    return AppBar(
      backgroundColor: Colors.lightBlue[100],
      leadingWidth: size.width / 3.7,
      leading: Row(
        children: [
          IconButton(
            icon: const Icon(IconChat.chevron_left,
                color: Colors.black, size: 28),
            onPressed: () => Navigator.pop(context),
          ),
          CircleBtnImage(
            image: Image.asset(
              chat_person.image,
            ),
            press: () {},
          ),
        ],
      ),
      title: Text(
        chat_person.name,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      actions: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
              )),
          child: IconButton(
            icon: const Icon(IconChat.video, color: Colors.black, size: 20),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 10),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.grey,
              )),
          child: IconButton(
            icon: const Icon(Icons.phone, color: Colors.black, size: 24),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
