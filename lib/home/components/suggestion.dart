import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_care_flutter/components/custom_container.dart';

import '../../SizeConfig.dart';
import '../../constants.dart';

class Suggestion extends StatelessWidget {
  const Suggestion({
    Key key,
    @required this.icon,
    @required this.text1,
    @required this.text2,
    @required this.text3,
    @required this.containertext,
    @required this.color,
  }) : super(key: key);
  final String icon, text1, text2, text3, containertext;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getProportionateScreenWidth(8)),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          SizedBox(
            width: getProportionateScreenWidth(5),
          ),
          SizedBox(
            width: getProportionateScreenWidth(38.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: nameColour.withOpacity(0.3),
                        fontSize: 10,
                      ),
                ),
                Text(
                  text2,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: nameColour,
                      ),
                ),
                Text(
                  text3,
                  style: Theme.of(context).textTheme.bodyText1.copyWith(
                        color: nameColour.withOpacity(0.3),
                        fontSize: 10,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          CustomContainer(
            onTap: () {},
            borderwidth: 0,
            color: color,
            text: containertext,
            bordercolor: Colors.white,
            textcolor: Colors.white,
          )
        ],
      ),
    );
  }
}
