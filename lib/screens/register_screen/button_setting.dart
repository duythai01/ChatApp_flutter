import 'package:flutter/material.dart';

class ButtonSettings extends StatelessWidget {
  final Icon icon;
  final Color color;
  final Text text;
  final VoidCallback press;
  const ButtonSettings({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
    required this.size,
    required this.press,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        width: size.width,
        child: MaterialButton(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          minWidth: double.infinity,
          onPressed: press,
          child: Row(
            children: [
              Container(
                  width: size.width * 0.1,
                  height: size.width * 0.1,
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(50)),
                  child: icon),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    child: text,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
