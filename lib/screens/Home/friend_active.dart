// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_chat/models/Friend.dart';

import '../../constants.dart';

Padding BuildStoryBoard(Size size, int index) {
  return Padding(
    padding: const EdgeInsets.only(left: 18),
    child: Container(
      height: size.height * 0.5,
      width: size.width * 0.2,
      child: Column(
        children: [
          SizedBox(
            height: size.width * 0.2,
            width: size.width * 0.2,
            child: Stack(children: [
              Container(
                height: size.width * 0.2,
                width: size.width * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.blue,
                      width: 5,
                    )),
                child: FloatingActionButton(
                  heroTag: "btn $index",
                  onPressed: () {},
                  child: Image.asset(
                    friendsList[index].image,
                    scale: 2,
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: kPrimaryColor,
                          width: 2,
                        )),
                    child: Icon(
                      Icons.circle,
                      color: Colors.green,
                    ),
                  ))
            ]),
          ),
          SizedBox(height: 8),
          Text(friendsList[index].name,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600))
        ],
      ),
    ),
  );
}
