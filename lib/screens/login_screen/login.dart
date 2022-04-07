// ignore_for_file: avoid_print, prefer_final_fields, unnecessary_new, unused_field, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_chat/components/Icons/eyes_icons.dart';
import 'package:flutter_chat/components/Icons/icon_login_icons.dart';
import 'package:flutter_chat/components/Icons/social_icons.dart';
import 'package:flutter_chat/screens/Home/home.dart';
import 'package:flutter_chat/screens/register_screen/register.dart';
import 'package:flutter_chat/validation.dart/validation_login.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import 'forget_password.dart';
import '../../components/line_black.dart';
import 'icon_social_btn.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     bool _secureText = true;
//     Size size = MediaQuery.of(context).size;
//     return ChangeNotifierProvider(
//         create: (context) => LoginValidate(),
//         child: LoginContent(size: size, secureText: _secureText));
//   }
// }

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _secureText = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
        create: (context) => LoginValidate(), child: LoginContent(size: size));
  }
}

class LoginContent extends StatelessWidget {
  const LoginContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final validationService = Provider.of<LoginValidate>(context);
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(25, size.height * 0.05, 25, 0),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo_chat-removebg-preview (2).png",
                      scale: 3.8,
                    ),
                    // Input phone number
                    TextFormField(
                        // controller: _phoneNumber,
                        // keyboardType: TextInputType.number,
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),

                          hintText: 'Nhap sdt',
                          errorText: validationService.phoneNumber.error,
                          hintStyle: const TextStyle(
                              fontSize: 17, color: Colors.black45),
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          prefixIcon: const Icon(Icon_login.user),
                          // prefixText:"|+84 ",
                        ),
                        onChanged: (value) {
                          validationService.changePhoneNumber(value);
                        }),
                    const SizedBox(height: kDefaultPadding + 5),
                    // input Password
                    TextFormField(
                        // controller: _password,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: 'Nhap password',
                            errorText: validationService.password.error,
                            hintStyle: const TextStyle(
                                fontSize: 17, color: Colors.black45),
                            contentPadding:
                                const EdgeInsets.fromLTRB(20, 20, 20, 20),
                            prefixIcon: const Icon(Icon_login.lock),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  validationService.hidePassword();
                                },
                                icon: Icon(validationService.secureText
                                    ? Eyes.eye_off
                                    : Eyes.eye),
                                color: Colors.black)),
                        obscureText: validationService.secureText,
                        onChanged: (value) {
                          validationService.changPassword(value);
                        }),
                    const SizedBox(height: 3),
                    // forget_password
                    const ForgetPassword(),
                    const SizedBox(height: kDefaultPadding),
                    // Login button
                    Container(
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
                        height: 60,
                        color: Colors.blue,
                        minWidth: double.infinity,
                        onPressed: () {
                         
                          if (validationService.isLogin) {
                             Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ));
                          } else {
                            print("sai");
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        LeftLineBlack(),
                        Text(
                          "   Or continue with   ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        RightLineBlack(),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconSocialButton(
                            press: () {
                              print('google');
                            },
                            icon: Image.asset(
                                "assets/images/Google__G__Logo.svg.png")),
                        IconSocialButton(
                            press: () {
                              print('apple');
                            },
                            icon: const Icon(Social.apple, size: 32)),
                        IconSocialButton(
                            press: () {
                              print("facebook");
                            },
                            icon: const Icon(
                              Social.facebook_squared,
                              color: Colors.blue,
                              size: 32,
                            ))
                      ],
                    ),
                    SizedBox(height: size.height * 0.04),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("Not a account?"),
                        TextButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                )),
                            child: const Text(
                              "Dang ki ngay",
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
        ));
  }
}
