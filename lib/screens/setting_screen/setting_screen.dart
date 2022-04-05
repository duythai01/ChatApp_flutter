// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_chat/screens/register_screen/button_setting.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_chat/components/Icons/setting_icon_icons.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg", color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/user1.png',
                      scale: 2,
                    ),
                    const Text("Dao Duy Thai",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              ButtonSettings(
                size: size,
                color: Colors.black,
                icon: const Icon(SettingIcon.moon, color: Colors.white),
                text: 'Che do toi',
                press: () {
                  print('Che do toi');
                },
              ),
              ButtonSettings(
                size: size,
                color: Colors.blue,
                icon:
                    const Icon(SettingIcon.chat, color: Colors.white, size: 16),
                text: 'Tin nhan dang cho',
                press: () {
                  print('Tin nhan dang cho');
                },
              ),
              ButtonSettings(
                size: size,
                color: const Color(0xFFff00ff),
                icon:
                    const Icon(SettingIcon.bell, color: Colors.white, size: 18),
                text: 'Thong bao & am thanh',
                press: () {
                  print('Thong bao & am thanh');
                },
              ),
              ButtonSettings(
                size: size,
                color: Colors.grey,
                icon: const Icon(SettingIcon.doc_text, color: Colors.white),
                text: 'Phap ly & chinh sach',
                press: () {
                  print('Phap ly & chinh sach');
                },
              ),
              ButtonSettings(
                size: size,
                color: Colors.lightBlue,
                icon: const Icon(SettingIcon.help_outline, color: Colors.white),
                text: 'Tro giup',
                press: () {
                  print('Tro giup');
                },
              ),
              ButtonSettings(
                size: size,
                color: const Color(0xFFff4dff),
                icon: const Icon(SettingIcon.image,
                    color: Colors.white, size: 18),
                text: 'Anh & file phuong tien',
                press: () {
                  print('Anh & file phuong tien');
                },
              ),
              ButtonSettings(
                size: size,
                color: Colors.orange,
                icon: const Icon(SettingIcon.attention,
                    color: Colors.white, size: 18),
                text: 'Bao cao su co ki thuat',
                press: () {
                  print('Bao cao su co ki thuat');
                },
              ),
              ButtonSettings(
                size: size,
                color: Colors.black,
                icon: const Icon(SettingIcon.moon, color: Colors.white),
                text: 'Che do toi',
                press: () {
                  print("Che do toi");
                },
              ),
              ButtonSettings(
                size: size,
                color: const Color(0xFFff00ff),
                icon: const Icon(SettingIcon.mood, color: Colors.white),
                text: 'Trang Thai tuy chinh',
                press: () {
                  print('Trang Thai tuy chinh');
                },
              ),
              ButtonSettings(
                size: size,
                color: Colors.black,
                icon: const Icon(SettingIcon.moon, color: Colors.white),
                text: 'Che do toi',
                press: () {
                  print("Che do toi");
                },
              ),
              ButtonSettings(
                size: size,
                color: Colors.black,
                icon: const Icon(SettingIcon.moon, color: Colors.white),
                text: 'Che do toi',
                press: () {
                  print("Che do toi");
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}
