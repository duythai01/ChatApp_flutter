// ignore_for_file: prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_chat/components/Icons/icon_login_icons.dart';

import '../../constants.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  TextEditingController _phoneNumberRegis = TextEditingController();
  TextEditingController _passwordRegis = TextEditingController();
  TextEditingController _passwordAgainRegis = TextEditingController();
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
          child: Center(
        child: Container(
          height: size.height * (0.6),
          width: size.width * (0.9),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: kDefaultPadding + 5),
                // input password
                Form(
                    child: TextFormField(
                  controller: _passwordRegis,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Nhap password',
                    hintStyle: TextStyle(fontSize: 17, color: Colors.black45),
                    contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    prefixIcon: Icon(Icon_login.lock),
                  ),
                  obscureText: _secureText,
                )),
                const SizedBox(height: kDefaultPadding + 5),
                // input password again
                Form(
                    child: TextFormField(
                  controller: _passwordAgainRegis,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    hintText: 'Nhap lai password',
                    hintStyle: TextStyle(fontSize: 17, color: Colors.black45),
                    contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    prefixIcon: Icon(Icon_login.lock),
                  ),
                  obscureText: _secureText,
                )),
                const SizedBox(height: kDefaultPadding + 5),
                // input password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Nhan ma",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    // input ma xac nhan
                    SizedBox(
                      width: size.width / 2,
                      child: Form(
                          child: TextFormField(
                        // autofocus: true,
                        style: const TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: UnderlineInputBorder(),
                          hintText: 'Ma xac nhan',
                          hintStyle:
                              TextStyle(fontSize: 20, color: Colors.black45),
                          contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        ),
                      )),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  width: size.width / 2,
                  decoration: BoxDecoration(
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
                    color: Colors.blue,
                    minWidth: double.infinity,
                    onPressed: () {},
                    child: const Text(
                      "Xac Nhan",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
