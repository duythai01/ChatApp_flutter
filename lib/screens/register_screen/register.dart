// ignore_for_file: unused_local_variable, avoid_print, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_chat/components/Icons/icon_login_icons.dart';
import 'package:flutter_chat/screens/login_screen/login.dart';

import '../../constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
          child: SingleChildScrollView(
        child: Center(
          child: Container(
            height: size.height * (0.8),
            width: size.width * (0.9),
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "Dang Ki",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(height: kDefaultPadding + 5),
                  // input phone number
                  Form(
                    child: TextFormField(
                      controller: _phoneNumberRegis,
                      keyboardType: TextInputType.number,
                      onChanged: (value){
                        setState(() {
                          
                        });
                      },
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      textInputAction: TextInputAction.done,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
                      Text(
                        "Nhap ma",
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontSize: 20),
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
                      onPressed: () {
                        print('phone: ' + _phoneNumberRegis.text + '\n');
                        print('password: ' + _passwordRegis.text + '\n');
                        print('passwordAgain: ' +
                            _passwordAgainRegis.text +
                            '\n');
                      },
                      child: const Text(
                        "Dang ki",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Already have an account?"),
                      TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              )),
                          child: const Text(
                            "Login here",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
