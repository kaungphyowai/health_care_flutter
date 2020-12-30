import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_care_flutter/SizeConfig.dart';
import 'package:health_care_flutter/components/custom_container.dart';
import 'package:health_care_flutter/components/default_button.dart';
import 'package:health_care_flutter/components/online_user.dart';
import 'package:health_care_flutter/constants.dart';
import 'package:health_care_flutter/turn_on_notificaiton/components/logoContainer.dart';
import 'package:health_care_flutter/turn_on_notificaiton/components/notificatioContainer.dart';

import 'circle_painter.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            buildBackgroundImage(),
            SafeArea(
              child: buildContent(context),
            ),
          ],
        )
      ],
    );
  }

  Column buildContent(BuildContext context) {
    return Column(
      children: [
        Text(
          "Congratulations!\nYou are clean",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3.copyWith(
                color: Colors.white,
              ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(3),
        ),
        buildProfileStack(),
        SizedBox(
          height: 1,
        ),
        buildStatus(context),
        SizedBox(
          height: getProportionateScreenHeight(4),
        ),
        Text(
          "Your X’Ray turned out to be very\nsuccessful. You are clean",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                color: color2,
              ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(3),
        ),
        DefaultButton(text: "TELL YOUR FAMILY", onPress: () {}),
        SizedBox(
          height: getProportionateScreenHeight(2),
        ),
        Text("Not now")
      ],
    );
  }

  Container buildStatus(context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(12),
      ),
      padding: EdgeInsets.only(
        right: getProportionateScreenWidth(5),
        left: getProportionateScreenWidth(5),
        top: getProportionateScreenHeight(3),
        bottom: getProportionateScreenHeight(2),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xff282828).withOpacity(0.08),
              blurRadius: 55,
              offset: Offset(0, 34),
            ),
          ],
          borderRadius:
              BorderRadius.circular(getProportionateScreenWidth(80) / 8)),
      height: SizeConfig.screenHeight * 0.4,
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(5),
              ),
              width: double.infinity,
              child: CustomPaint(
                foregroundPainter: CirclePainter(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/lungs.svg",
                      height: getProportionateScreenHeight(3),
                    ),
                    Text(
                      "89%",
                      style: Theme.of(context).textTheme.headline3.copyWith(
                            color: color1ter,
                          ),
                    ),
                    Text(
                      "immune system",
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: nameColour.withOpacity(0.5),
                            fontSize: 5,
                          ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(1),
          ),
          Divider(),
          SizedBox(
            height: getProportionateScreenHeight(1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You paid",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          color: nameColour.withOpacity(0.5),
                        ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(1),
                  ),
                  Text(
                    "\$987 USD",
                    style: Theme.of(context).textTheme.headline4.copyWith(
                          color: nameColour,
                        ),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(1),
                  ),
                  Text(
                    "Service Charge",
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          color: nameColour.withOpacity(0.5),
                        ),
                  ),
                ],
              ),
              CustomContainer(
                  color: nameColour,
                  text: "SEND TO WALLET",
                  bordercolor: nameColour,
                  textcolor: Colors.white,
                  borderwidth: 0,
                  onTap: () {})
            ],
          )
        ],
      ),
    );
  }

  Container buildBackgroundImage() {
    return Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.screenHeight * 0.6,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/Background.png",
              ))),
    );
  }

  SizedBox buildProfileStack() {
    return SizedBox(
      height: getProportionateScreenHeight(11),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.109),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: NotifiContainer(
                    text1: "Alexis",
                    text2: "\nYour results are here",
                    supertext: "")),
            Align(alignment: Alignment.centerLeft, child: LogoContainer()),
            Align(
              alignment: Alignment(0.9, 0),
              child: OnlineUser(
                radius: 6,
                greenCircleRadius: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
