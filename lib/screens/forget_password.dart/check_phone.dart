// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_chat/components/Icons/icon_login_icons.dart';
import 'package:flutter_chat/screens/forget_password.dart/reset_password.dart';

import '../../constants.dart';

class CheckPhoneScreen extends StatefulWidget {
  const CheckPhoneScreen({Key? key}) : super(key: key);

  @override
  State<CheckPhoneScreen> createState() => _CheckPhoneScreenState();
}

class _CheckPhoneScreenState extends State<CheckPhoneScreen> {
  TextEditingController _phoneNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Container(
                width: size.width * 0.85,
                height: size.height * 0.25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Form(
                        child: TextFormField(
                          controller: _phoneNumber,
                          keyboardType: TextInputType.number,
                          onChanged: (value) {
                            setState(() {});
                          },
                          style: const TextStyle(
                            fontSize: 18,
                          ),
                          textInputAction: TextInputAction.done,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
          
                            hintText: 'Nhap sdt',
          
                            hintStyle:
                                TextStyle(fontSize: 17, color: Colors.black45),
                            contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                            prefixIcon: Icon(Icon_login.user),
                            // prefixText:"|+84 ",
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: size.width / 2.5,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(40)),
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
                          height: 50,
                          color: Colors.blue,
                          minWidth: double.infinity,
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ResetPasswordScreen(),
                              )),
                          child: const Text(
                            "Tiep tuc",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        )));
  }
}
