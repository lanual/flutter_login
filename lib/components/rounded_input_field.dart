import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';
import 'text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> changed;

  const RoundedInputField({
    Key key,
    @required this.changed,
    @required this.hintText,
    this.icon = Icons.person,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        autofocus: true,
        keyboardType: TextInputType.emailAddress,
        onChanged: changed,
        decoration: InputDecoration(
          hintText: hintText,
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
