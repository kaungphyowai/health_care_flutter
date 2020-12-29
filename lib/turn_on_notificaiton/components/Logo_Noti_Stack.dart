import 'package:flutter/material.dart';

import '../../SizeConfig.dart';
import 'logoContainer.dart';
import 'notificatioContainer.dart';

class LogoNotiStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: getProportionateScreenWidth(12),
            child: NotifiContainer(
                text1: "Healthie",
                text2: "\nYour weekly report is here!",
                supertext: "TM")),
        Positioned(
            left: 0,
            top: getProportionateScreenWidth(3),
            child: LogoContainer()),
      ],
    );
  }
}
