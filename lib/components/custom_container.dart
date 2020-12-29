import 'package:flutter/material.dart';

import '../SizeConfig.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key key,
    @required this.color,
    @required this.text,
    @required this.bordercolor,
    @required this.textcolor,
    @required this.borderwidth,
    @required this.onTap,
  }) : super(key: key);
  final Color color, bordercolor, textcolor;
  final String text;
  final double borderwidth;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(5),
          vertical: getProportionateScreenHeight(1),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: borderwidth,
            color: bordercolor,
          ),
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.subtitle1.copyWith(
                color: textcolor,
                fontSize: 8,
              ),
        ),
      ),
    );
  }
}
