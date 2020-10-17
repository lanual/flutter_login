import 'package:flutter/material.dart';
import 'package:flutter_login/components/rounded_button.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'background.dart';
import 'package:flutter_login/components/rounded_input_field.dart';
import 'package:flutter_login/components/rounded_password_field.dart';
import 'package:flutter_login/components/already_have_an_account.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: 'Your Email',
              changed: (value) {},
            ),
            RoundedPasswordField(
              changed: (value) {},
            ),
            RoundedBotton(
              text: 'LOGIN',
              color: kPrimaryColor,
              textColor: Colors.white,
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccount(
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
