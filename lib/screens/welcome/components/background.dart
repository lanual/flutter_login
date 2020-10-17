import 'package:flutter/material.dart';

class BodyGround extends StatelessWidget {
  final Widget child;

  BodyGround({@required this.child});
  @override
  Widget build(BuildContext context) {
    //this size provide us total heigh and width of our screen
    Size size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    double sizeWidth = size.width;
    double sizeHeight = size.height;
    return Container(
      height: sizeHeight,
      width: sizeWidth,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_top.png',
              width: isPortrait ? sizeWidth * 0.3 : null,
              height: isPortrait ? null : sizeHeight * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_bottom.png',
              width: isPortrait ? sizeWidth * 0.2 : null,
              height: isPortrait ? null : sizeHeight * 0.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
