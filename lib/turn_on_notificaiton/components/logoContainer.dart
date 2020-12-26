import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../SizeConfig.dart';

class LogoContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(3),
        vertical: getProportionateScreenWidth(1),
      ),
      height: getProportionateScreenWidth(13),
      width: getProportionateScreenWidth(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(18) / 8,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 34,
            offset: Offset(0, 13),
            color: Color(0x3656C596),
          )
        ],
      ),
      child: SvgPicture.asset(
        "assets/icons/logo.svg",
      ),
    );
  }
}
