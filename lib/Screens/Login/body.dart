import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_register_screen/Screens/Login/components/background.dart';
import 'package:login_register_screen/Screens/Login/components/login_screen.dart';
import 'package:login_register_screen/Screens/SignUp/sign_up_screen.dart';
import 'package:login_register_screen/Screens/Welcome/components/roundedButton.dart';

import '../../constants.dart';
import 'components/already_have_an_account.dart';
import 'components/rounded_password_field.dart';
import 'components/rounded_text_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login".toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                color: kPrimaryColor),
          ),
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/icons/password.svg",
            height: size.height * 0.3,
          ),
          SizedBox(
            height: 20,
          ),
          RoundedTextField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Your Password",
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            onPress: () {},
          ),
          SizedBox(
            height: 10,
          ),
          AlreadyHaveAnAccount(
            onPress: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              ),
            },
          ),
        ],
      ),
    );
  }
}
