import 'package:flutter/material.dart';
import 'components/body.dart';

class WelComeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Body(),
      ),
    );
  }
}