import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_register_screen/Screens/Login/components/already_have_an_account.dart';
import 'package:login_register_screen/Screens/Login/components/login_screen.dart';
import 'package:login_register_screen/Screens/Login/components/rounded_password_field.dart';
import 'package:login_register_screen/Screens/Login/components/rounded_text_field.dart';
import 'package:login_register_screen/Screens/Welcome/components/roundedButton.dart';

import '../../../constants.dart';
import 'background.dart';
import 'or_divider.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Register",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 22.0,
            ),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          SvgPicture.asset(
            "assets/icons/sign_up.svg",
            height: size.height * 0.29,
          ),
          SizedBox(
            height: 20,
          ),
          RoundedTextField(
            hintText: "Username",
          ),
          RoundedPasswordField(
            hintText: "Password",
          ),
          RoundedButton(
            text: "Sign Up",
            onPress: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: AlreadyHaveAnAccount(
              onPress: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
              login: false,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          OrDivider(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              social_icon_container("assets/icons/facebook.svg", () {
                print("Facebook");
              }),
              social_icon_container("assets/icons/google-plus.svg", () {
                print("Google Plus");
              }),
              social_icon_container("assets/icons/twitter.svg", () {
                print("Twitter");
              }),
            ],
          )
        ],
      ),
    );
  }

  Container social_icon_container(
    final String iconPath,
    final Function onPress,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            iconPath,
            color: kPrimaryColor,
            height: 25.0,
          ),
        ),
      ),
    );
  }
}
