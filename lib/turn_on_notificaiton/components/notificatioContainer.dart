import 'package:flutter/material.dart';

import '../../SizeConfig.dart';
import '../../constants.dart';

class NotifiContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(10),
        top: getProportionateScreenWidth(5),
        bottom: getProportionateScreenWidth(5),
        right: getProportionateScreenWidth(20),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(18) / 5,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 34,
            offset: Offset(0, 13),
            color: Color(0x3656C596),
          )
        ],
      ),
      child: buildTitle(context),
    );
  }

  Column buildTitle(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: "Healthie",
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: gradientColour1),
            children: [
              WidgetSpan(
                child: Transform.translate(
                  offset: Offset(0, -7),
                  child: Text(
                    "TM",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: gradientColour1,
                          fontSize: 8,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Text(
          "\nYour weekly report is here!",
          style: Theme.of(context).textTheme.bodyText2.copyWith(
                fontSize: 10,
                color: nameColour,
              ),
        ),
      ],
    );
  }
}
