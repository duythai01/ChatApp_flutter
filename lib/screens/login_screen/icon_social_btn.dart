// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/Icons/social_icons.dart';
import '../Home/home.dart';
import 'Social_login/google_login.dart';
import 'Social_login/google_sign_in.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GoogleSignInProvider>(builder: (context, gg, child) {
      return StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return IconSocialButton(
                  press: () {
                    print('google');
                    gg.googleLogin();
                    signInWithGoogle().then((value) {
                      if (value != null) {
                        print(value);
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const HomeScreen(),
                          ),
                          (route) => false,
                        );
                      }
                    });
                  },
                  icon: Image.asset("assets/images/Google__G__Logo.svg.png"));
            }
          });
    });
  }
}

class AppleLogin extends StatelessWidget {
  const AppleLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconSocialButton(
        press: () {
          print('apple');
        },
        icon: const Icon(Social.apple, size: 32));
  }
}

class FacebookLogin extends StatelessWidget {
  const FacebookLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconSocialButton(
        press: () {
          print('facebook');
        },
        icon: const Icon(
          Social.facebook_squared,
          color: Colors.blue,
          size: 32,
        ));
  }
}

class IconSocialButton extends StatelessWidget {
  final VoidCallback press;
  final Widget icon;
  const IconSocialButton({
    Key? key,
    required this.icon,
    required this.press,
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
