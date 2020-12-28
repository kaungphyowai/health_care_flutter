import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../SizeConfig.dart';
import 'components/otp_body.dart';

class Otp extends StatelessWidget {
  static final String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: getProportionateScreenWidth(15),
          child: SvgPicture.asset("assets/icons/logo.svg"),
        ),
      ),
      body: OtpBody(),
    );
  }
}
