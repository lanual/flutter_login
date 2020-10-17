import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  BackGround({@required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      width: size.width,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/signup_top.png',
              width: isPortrait ? size.width * 0.3 : size.height * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_bottom.png',
              width: isPortrait ? size.width * 0.2 : size.height * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
