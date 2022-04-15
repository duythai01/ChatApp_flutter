// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat/providers/settings.dart';
import 'package:flutter_chat/screens/setting_screen/setting_screen.dart';
import 'package:flutter_chat/widgets/circle_btn.dart';
import 'package:provider/provider.dart';

import 'chat_message.dart';
import 'stories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
        create: (BuildContext context) => SettingsProvider(),
        child: Home(size: size));
  }
}

class Home extends StatelessWidget {
  const Home({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    final settingsProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      backgroundColor:
          settingsProvider.darkMode ? Colors.black : Colors.lightBlue[100],
      appBar: BuildAppBar(size, context, settingsProvider),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          //header
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Story(size: size, settingsProvider: settingsProvider),
                SearchBar(size: size),
                ChatMessage(size: size, settingsProvider: settingsProvider),
              ],
            )
          ],
        ),
      )),
    );
  }

  AppBar BuildAppBar(
      Size size, BuildContext context, SettingsProvider settingsProvider) {
    return AppBar(
      toolbarHeight: size.height * 0.1,
      backgroundColor:
          settingsProvider.darkMode ? Colors.black : Colors.lightBlue[100],
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.only(left: 10),
        child: CircleBtnImage(
          image: Image.asset(
            "assets/images/user1.png",
            scale: 2,
          ),
          press: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      SettingScreen(settingsProvider: settingsProvider),
                ));
          },
        ),
      ),
      title: RichText(
        text: TextSpan(
            text: "Good morning \n",
            style: TextStyle(
              color: settingsProvider.darkMode ? Colors.white : Colors.black87,
            ),
            children: [
              TextSpan(
                text: "Dao Duy Thai",
                style: TextStyle(
                    color: settingsProvider.darkMode
                        ? Colors.white
                        : Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ]),
      ),
      actions: [
        CircleBtnIcon(
          colorBackground:
              settingsProvider.darkMode ? Colors.black38 : Colors.white,
          margin: 6,
          icon: Icon(
            Icons.camera_alt,
            size: 28,
            color: settingsProvider.darkMode ? Colors.white : Colors.black,
          ),
          press: () {},
        ),
        CircleBtnIcon(
          margin: 6,
          colorBackground:
              settingsProvider.darkMode ? Colors.black38 : Colors.white,
          icon: Icon(
            Icons.add,
            size: 32,
            color: settingsProvider.darkMode ? Colors.white : Colors.black,
          ),
          press: () {},
        )
      ],
    );
  }
}
