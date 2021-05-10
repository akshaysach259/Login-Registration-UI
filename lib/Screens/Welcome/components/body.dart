import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_register_screen/Screens/Login/components/login_screen.dart';
import 'package:login_register_screen/Screens/SignUp/sign_up_screen.dart';
import 'package:login_register_screen/Screens/Welcome/components/background.dart';
import 'package:login_register_screen/Screens/Welcome/components/roundedButton.dart';
import 'package:login_register_screen/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to Hawaii",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              fontSize: 22.0,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SvgPicture.asset(
            "assets/icons/welcome.svg",
            width: size.width * 0.9,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButton(
            text: "LOGIN",
            onPress: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              ),
            },
          ),
          RoundedButton(
            text: "Register",
            color: kPrimaryLightColor,
            textColor: kPrimaryColor,
            onPress: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              )
            },
          )
        ],
      )),
    );
  }
}
