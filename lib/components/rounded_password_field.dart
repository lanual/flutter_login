import 'package:flutter/material.dart';
import 'text_field_container.dart';
import 'package:flutter_login/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> changed;

  const RoundedPasswordField({
    Key key,
    @required this.changed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        //textAlign: TextAlign.center,
        obscureText: true,
        onChanged: changed,
        decoration: InputDecoration(
          icon: Icon(Icons.lock, color: kPrimaryColor),
          border: InputBorder.none,
          hintText: 'Password',
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
