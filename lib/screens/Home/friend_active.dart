 // ignore_for_file: non_constant_identifier_names

 import 'package:flutter/material.dart';
import 'package:flutter_chat/models/Friend.dart';

Padding BuildFriendActive(Size size, int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Container(
        width: size.height * 0.14,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Image.asset(
                friendsList[index].image,
                scale: 3.8,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(friendsList[index].name,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600))
            ],
          ),
        ),
      ),
    );
  }
