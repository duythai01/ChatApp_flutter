import 'package:flutter/material.dart';

class CircleBtnIcon extends StatelessWidget {
  final Icon icon;
  final Color colorBackground;
  final VoidCallback press;
  final double margin;

  const CircleBtnIcon(
      {Key? key,
      required this.icon,
      required this.colorBackground,
      required this.press, required this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin:  EdgeInsets.all(margin),
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
