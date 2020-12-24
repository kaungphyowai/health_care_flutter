import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding extends StatelessWidget {
  static final routeName = "/onboarding";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(child: SvgPicture.asset("assets/icons/logo.svg")),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
    );
  }
}
