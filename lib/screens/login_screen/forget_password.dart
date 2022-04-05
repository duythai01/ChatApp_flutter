import 'package:flutter/material.dart';
import 'package:flutter_chat/screens/forget_password.dart/check_phone.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
           onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CheckPhoneScreen(),
                              )),
           child:  const Text(
             "Quen mat khau",
            style:TextStyle(
               fontSize: 16,
               color: Colors.black54,
               decoration: TextDecoration.underline
            ),
            
           )
           ),
      ],
    );
  }
}