import 'package:flutter/material.dart';

class LeftLineBlack extends StatelessWidget {
  const LeftLineBlack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 80
      ,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF1a1a1a),
            Color(0xFFd9d9d9),
          ],
          begin: FractionalOffset(1.0, 0.0),
          end: FractionalOffset(0.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
    );
  }
}
class RightLineBlack extends StatelessWidget {
  const RightLineBlack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 80
      ,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            
            Color(0xFFd9d9d9),
            Color(0xFF1a1a1a),
          ],
          begin: FractionalOffset(1.0, 0.0),
          end: FractionalOffset(0.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
    );
  }
}
