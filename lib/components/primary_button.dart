// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../constants.dart';

class PrimaryButton extends StatefulWidget {
  final String text;
  final VoidCallback press;
  final color;
  final EdgeInsets padding;
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = Colors.blue,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.75),
  }) : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: const Offset(0, 5),
              blurRadius: 15.0,
              spreadRadius: 2.0,
            )
          ]),
      child: MaterialButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        height: 60,
        color: widget.color,
        minWidth: double.infinity,
        onPressed: widget.press,
        child: Text(
          widget.text,
          style: const TextStyle(
            color: Colors.white,
           fontSize: 20,
           fontWeight:FontWeight.bold),
        ),
      ),
    );
  }
}
