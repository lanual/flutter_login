import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isProtrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_top.png',
              width: isProtrait ? size.width * 0.35 : null,
              height: isProtrait ? null : size.height * 0.35,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/images/login_bottom.png',
              width: isProtrait ? size.width * 0.4 : null,
              height: isProtrait ? null : size.height * 0.2,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
