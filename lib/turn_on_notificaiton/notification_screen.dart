import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../SizeConfig.dart';
import 'components/notification_body.dart';

class NotificationScreen extends StatelessWidget {
  static final routeName = "/notification";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: getProportionateScreenWidth(15),
          child: SvgPicture.asset("assets/icons/logo.svg"),
        ),
      ),
      body: NotificationBody(),
    );
  }
}
