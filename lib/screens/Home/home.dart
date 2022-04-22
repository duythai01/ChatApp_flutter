// ignore_for_file: non_constant_identifier_names, unused_local_variable, deprecated_member_use

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat/providers/settings.dart';
import 'package:flutter_chat/screens/setting_screen/setting_screen.dart';
import 'package:flutter_chat/widgets/circle_btn.dart';
import 'package:provider/provider.dart';

import '../login_screen/Social_login/google_sign_in.dart';
import '../login_screen/login.dart';
import 'chat_message.dart';
import 'stories.dart';

enum ConfirmAction { cancel, accept }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
        onWillPop: () async {
          final ConfirmAction? action = await _asyncConfirmDialog(context);
          return false;
        },
        child: Home(size: size));
  }
}

Future<ConfirmAction?> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: true, // user must tap button for close dialog!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Thoat tai khoan ?'),
        content: const Text('Tai khoan se bi dang xuat khoi ung dung '),
        actions: <Widget>[
          FlatButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.cancel);
            },
          ),
          FlatButton(
            child: const Text('Accept'),
            onPressed: () {
              signOutGoogle();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const LoginScreen(),
                ),
                (route) => false,
              );
            },
          )
        ],
      );
    },
  );
}

class Home extends StatelessWidget {
  const Home({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
        builder: (context, settingsProvider, child) {
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
    });
  }

  AppBar BuildAppBar(
      Size size, BuildContext context, SettingsProvider settingsProvider) {
    final user = FirebaseAuth.instance.currentUser;
    var image = user?.photoURL;
    var name = user?.displayName;
    print(user?.photoURL);
    return AppBar(
      toolbarHeight: size.height * 0.1,
      backgroundColor:
          settingsProvider.darkMode ? Colors.black : Colors.lightBlue[100],
      elevation: 0,
      leading: SizedBox(
        child: FloatingActionButton(
          child:
              CircleAvatar(backgroundImage: NetworkImage(image!), radius: 30),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SettingScreen(),
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
                text: name,
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
              settingsProvider.darkMode ? Colors.white54 : Colors.white,
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
              settingsProvider.darkMode ? Colors.white54 : Colors.white,
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
