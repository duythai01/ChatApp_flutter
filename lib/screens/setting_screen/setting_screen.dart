// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_chat/providers/settings.dart';
import 'package:flutter_chat/screens/register_screen/button_setting.dart';
import 'package:flutter_svg/svg.dart';

import 'package:flutter_chat/components/Icons/setting_icon_icons.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Consumer<SettingsProvider>(
      builder: (context, settingsProvider, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor:
                settingsProvider.darkMode ? Colors.black : Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: SvgPicture.asset("assets/icons/back.svg",
                  color:
                      settingsProvider.darkMode ? Colors.white : Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          body: Container(
            color: settingsProvider.darkMode ? Colors.black : Colors.white,
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
                        Text("Dao Duy Thai",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: settingsProvider.darkMode
                                    ? Colors.white
                                    : Colors.black)),
                      ],
                    ),
                  ),
                  ButtonSettings(
                    size: size,
                    color:
                        settingsProvider.darkMode ? Colors.white : Colors.black,
                    icon: settingsProvider.darkMode
                        ? Icon(Icons.light_mode, color: Colors.black)
                        : Icon(SettingIcon.moon, color: Colors.white),
                    text: Text(
                        settingsProvider.darkMode
                            ? "CHe do sang"
                            : "CHe do toi",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      settingsProvider.changeMode();
                      print('Che do toi');
                    },
                  ),
                  ButtonSettings(
                    size: size,
                    color: Colors.blue,
                    icon: const Icon(SettingIcon.chat,
                        color: Colors.white, size: 16),
                    text: Text("Tin nhan dang cho",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      print('Tin nhan dang cho');
                    },
                  ),
                  ButtonSettings(
                    size: size,
                    color: const Color(0xFFff00ff),
                    icon: const Icon(SettingIcon.bell,
                        color: Colors.white, size: 18),
                    text: Text("Thong bao & am thanh",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      print('Thong bao & am thanh');
                    },
                  ),
                  ButtonSettings(
                    size: size,
                    color: Colors.grey,
                    icon: const Icon(SettingIcon.doc_text, color: Colors.white),
                    text: Text("Phap li & chinh sach",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      print('Phap ly & chinh sach');
                    },
                  ),
                  ButtonSettings(
                    size: size,
                    color: Colors.lightBlue,
                    icon: const Icon(SettingIcon.help_outline,
                        color: Colors.white),
                    text: Text("Tro giup",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      print('Tro giup');
                    },
                  ),
                  ButtonSettings(
                    size: size,
                    color: const Color(0xFFff4dff),
                    icon: const Icon(SettingIcon.image,
                        color: Colors.white, size: 18),
                    text: Text('Anh & file phuong tien',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      print('Anh & file phuong tien');
                    },
                  ),
                  ButtonSettings(
                    size: size,
                    color: Colors.orange,
                    icon: const Icon(SettingIcon.attention,
                        color: Colors.white, size: 18),
                    text: Text('Bao cao su co ki thuat',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      print('Bao cao su co ki thuat');
                    },
                  ),
                  ButtonSettings(
                    size: size,
                    color:
                        settingsProvider.darkMode ? Colors.black : Colors.white,
                    icon: settingsProvider.darkMode
                        ? Icon(Icons.light_mode, color: Colors.white)
                        : Icon(SettingIcon.moon, color: Colors.white),
                    text: Text("CHe do toi",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      print('Che do toi');
                    },
                  ),
                  ButtonSettings(
                    size: size,
                    color: const Color(0xFFff00ff),
                    icon: const Icon(SettingIcon.mood, color: Colors.white),
                    text: Text('Trang thai tuy chinh',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      print('Trang Thai tuy chinh');
                    },
                  ),
                  ButtonSettings(
                    size: size,
                    color:
                        settingsProvider.darkMode ? Colors.black : Colors.white,
                    icon: settingsProvider.darkMode
                        ? Icon(Icons.light_mode, color: Colors.white)
                        : Icon(SettingIcon.moon, color: Colors.white),
                    text: Text("CHe do toi",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      print('Che do toi');
                    },
                  ),
                  ButtonSettings(
                    size: size,
                    color:
                        settingsProvider.darkMode ? Colors.black : Colors.white,
                    icon: settingsProvider.darkMode
                        ? Icon(Icons.light_mode, color: Colors.white)
                        : Icon(SettingIcon.moon, color: Colors.white),
                    text: Text("CHe do toi",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: settingsProvider.darkMode
                                ? Colors.white
                                : Colors.black)),
                    press: () {
                      print('Che do toi');
                    },
                  ),
                ],
              ),
            )),
          ),
        );
      },
    );
  }
}
