import 'package:flutter/material.dart';

class CircleBtnIcon extends StatelessWidget {
  final Icon icon;
  final Color colorBackground;
  final VoidCallback press;

  const CircleBtnIcon(
      {Key? key,
      required this.icon,
      required this.colorBackground,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: colorBackground,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          onPressed: press,
          icon: icon,
        ));
  }
}

class CircleBtnImage extends StatelessWidget {
  final VoidCallback press;
  final Image image;
  const CircleBtnImage({Key? key, required this.press, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: FloatingActionButton(onPressed: press, child: image),
    );
  }
}
