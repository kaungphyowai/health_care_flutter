import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../SizeConfig.dart';
import 'components/login_body.dart';

class LoginScreen extends StatelessWidget {
  static final String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: getProportionateScreenWidth(15),
          child: SvgPicture.asset("assets/icons/logo.svg"),
        ),
      ),
      body: LoginBody(),
    );
  }
}
