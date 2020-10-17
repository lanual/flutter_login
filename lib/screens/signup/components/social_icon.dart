import 'package:flutter/material.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String icon;
  final Function press;

  SocialIcon({@required this.icon, @required this.press});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: size.height * 0.001,
          horizontal: size.width * 0.05,
        ),
        padding: EdgeInsets.all(size.height * 0.01),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: kPrimaryColor,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          icon,
          height: isPortrait ? size.height * 0.03 : size.width * 0.04,
        ),
      ),
    );
  }
}
