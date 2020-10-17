import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_login/screens/login/login_screen.dart';
import 'package:flutter_login/screens/signup/signup_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'background.dart';
import 'package:flutter_login/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double sizeHeight = size.height;
    return BodyGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: sizeHeight * 0.03),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: sizeHeight * 0.4,
            ),
            SizedBox(height: sizeHeight * 0.03),
            RoundedBotton(
              color: kPrimaryColor,
              text: 'Login',
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedBotton(
              color: kPrimaryLightColor,
              text: 'Sig Up',
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignupScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
