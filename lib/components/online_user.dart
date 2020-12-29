import 'package:flutter/material.dart';

import '../SizeConfig.dart';

class OnlineUser extends StatelessWidget {
  const OnlineUser({
    Key key,
    @required this.radius,
    @required this.greenCircleRadius,
  }) : super(key: key);
  final double radius;
  final double greenCircleRadius;
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/su.jpg",
          ),
          maxRadius: getProportionateScreenWidth(radius),
        ),
        Positioned(
          bottom: 0,
          right: -1,
          child: Container(
            width: getProportionateScreenWidth(greenCircleRadius),
            height: getProportionateScreenWidth(greenCircleRadius),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff47CACC),
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
