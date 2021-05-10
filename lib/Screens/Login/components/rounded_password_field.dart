import 'package:flutter/material.dart';
import 'package:login_register_screen/Screens/Login/components/text_field_container.dart';

import '../../../constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final IconData icon;

  const RoundedPasswordField({
    Key key,
    this.hintText,
    this.onChanged,
    this.icon = Icons.lock,
  }) : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool obscureTextField = true;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: widget.onChanged,
        obscureText: obscureTextField ? true : false,
        decoration: InputDecoration(
          hintText: widget.hintText,
          icon: Icon(
            widget.icon,
            color: kPrimaryColor,
          ),
          suffixIcon: GestureDetector(
            onTap: () => setState(() {
              obscureTextField = !obscureTextField;
            }),
            child: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
