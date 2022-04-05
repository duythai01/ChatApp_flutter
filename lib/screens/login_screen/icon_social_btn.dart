// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class IconSocialButton extends StatelessWidget {
  final VoidCallback press;
  final Widget icon;
  const IconSocialButton({
    Key? key,
    required this.icon, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(50)),
          child: IconButton(
            onPressed: press,
            icon: icon,
          )),
    );
  }
}
