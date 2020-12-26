import 'package:flutter/material.dart';
import 'package:health_care_flutter/SizeConfig.dart';
import 'package:health_care_flutter/constants.dart';
import 'package:health_care_flutter/turn_on_notificaiton/components/logoContainer.dart';
import 'package:health_care_flutter/turn_on_notificaiton/components/notificatioContainer.dart';

class NotificationBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(6),
          ),
          Text(
            "Turn on Notificaiton",
            style: Theme.of(context).textTheme.headline3.copyWith(
                  fontSize: 15,
                  color: nameColour,
                ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(5),
          ),
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    "assets/images/iphone.png",
                    height: getProportionateScreenHeight(58),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0, -1),
                        end: Alignment(0, -0.5),
                        colors: [
                          Colors.white.withOpacity(0),
                          Colors.white,
                        ],
                      ),
                    ),
                    alignment: Alignment.bottomCenter,
                    height: getProportionateScreenHeight(60),
                  ),
                ),
                Column(
                  children: [
                    Positioned(
                      // left: getProportionateScreenWidth(24),
                      // top: getProportionateScreenHeight(10),
                      child: NotifiContainer(),
                    ),
                    Positioned(
                      // left: getProportionateScreenWidth(12),
                      // top: getProportionateScreenHeight(12),
                      child: LogoContainer(),
                    ),
                    Positioned(
                      // right: getProportionateScreenWidth(11),
                      // top: getProportionateScreenHeight(10),
                      child: Container(
                        width: getProportionateScreenWidth(5),
                        height: getProportionateScreenWidth(5),
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
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
