import 'package:flutter/material.dart';

class RoundedBotton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  RoundedBotton(
      {@required this.text,
      @required this.color,
      @required this.press,
      @required this.textColor});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      //margin: EdgeInsets.only(top: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          onPressed: press,
          color: color,
          textColor: textColor,
          child: Text(text),
        ),
      ),
    );
  }
}
