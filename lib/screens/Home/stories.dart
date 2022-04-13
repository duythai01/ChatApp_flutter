// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat/models/Friend.dart';

import '../../constants.dart';

class Story extends StatelessWidget {
  const Story({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size.height * 0.1 + 10,
        // color: Colors.amberAccent,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: friendsList.length,
            itemBuilder: (context, index) =>
                BuildStoryBoard(size, index)));
  }
}

Padding BuildStoryBoard(Size size, int index) {
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
                    child: Image.asset(
                      friendsList[index].image,
                      scale: 3,
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
                          color: kPrimaryColor,
                          width: 2,
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
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600))
        ],
      ),
    ),
  );
}
