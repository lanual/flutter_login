import 'package:flutter/material.dart';
import 'package:flutter_login/components/already_have_an_account.dart';
import 'package:flutter_login/components/rounded_button.dart';
import 'package:flutter_login/components/rounded_input_field.dart';
import 'package:flutter_login/components/rounded_password_field.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_login/screens/login/login_screen.dart';

import 'package:flutter_svg/svg.dart';
import 'background.dart';
import 'package:flutter_login/screens/signup/components/or_divider.dart';
import 'package:flutter_login/screens/signup/components/social_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Singnup',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset('assets/icons/signup.svg'),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              changed: (value) {},
              hintText: 'Email',
            ),
            RoundedPasswordField(
              changed: (value) {},
            ),
            RoundedBotton(
              text: 'Signup',
              color: kPrimaryColor,
              press: () {},
              textColor: Colors.white,
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccount(
              press: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
              login: false,
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  icon: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialIcon(
                  icon: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SocialIcon(
                  icon: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
