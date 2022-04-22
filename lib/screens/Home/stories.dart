// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat/models/Friend.dart';
import 'package:flutter_chat/providers/settings.dart';
import 'package:flutter_chat/widgets/circle_btn.dart';

import '../../constants.dart';

class Story extends StatelessWidget {
  const Story({
    Key? key,
    required this.size,
    required this.settingsProvider,
  }) : super(key: key);

  final Size size;
  final SettingsProvider settingsProvider;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.1 + 10,
        // color: Colors.amberAccent,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: friendsList.length,
            itemBuilder: (context, index) {
              if (index == 0) {
                return AddStory(settingsProvider: settingsProvider);
              }
              return BuildStoryBoard(size, index, settingsProvider);
            }));
  }
}

class AddStory extends StatelessWidget {
  const AddStory({
    Key? key,
    required this.settingsProvider,
  }) : super(key: key);
  final SettingsProvider settingsProvider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: CircleBtnIcon(
                margin: 0,
                colorBackground:
                    settingsProvider.darkMode ? Colors.white54 : Colors.white,
                icon: Icon(Icons.add,
                    size: 32,
                    color: settingsProvider.darkMode
                        ? Colors.white
                        : Colors.black),
                press: () {},
              ),
            ),
            const SizedBox(height: 2),
            Text("Them tin",
                style: TextStyle(
                    color:
                        settingsProvider.darkMode ? Colors.white : Colors.black,
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}

Padding BuildStoryBoard(
    Size size, int index, SettingsProvider settingsProvider) {
  return Padding(
    padding: const EdgeInsets.only(left: 8),
    child: Container(
      height: size.height * 0.6,
      width: size.width * 0.18,
      // color: Colors.amber,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 60,
            child: Stack(children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blue,
                        width: 5,
                      )),
                  child: FloatingActionButton(
                    heroTag: "btn $index",
                    onPressed: () {},
                    child: CircleAvatar(
                      backgroundImage: AssetImage(friendsList[index].image),
                      radius: 30,
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: settingsProvider.darkMode
                              ? Colors.black
                              : kPrimaryColor,
                          width: 3,
                        )),
                    child: const Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 16,
                    ),
                  ))
            ]),
          ),
          const SizedBox(height: 2),
          Text(friendsList[index].name,
              style: TextStyle(
                  color:
                      settingsProvider.darkMode ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w600))
        ],
      ),
    ),
  );
}
