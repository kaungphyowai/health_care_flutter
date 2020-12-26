import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_care_flutter/SizeConfig.dart';
import 'package:health_care_flutter/onboarding/components/body.dart';

class OnBoarding extends StatelessWidget {
  static final routeName = "/onboarding";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: getProportionateScreenWidth(15),
          child: SvgPicture.asset("assets/icons/logo.svg"),
        ),
      ),
      body: Body(),
    );
  }
}
