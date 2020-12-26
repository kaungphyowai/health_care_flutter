import 'package:flutter/material.dart';
import 'package:health_care_flutter/SizeConfig.dart';
import 'package:health_care_flutter/components/default_button.dart';
import 'package:health_care_flutter/constants.dart';
import 'package:health_care_flutter/turn_on_notificaiton/notification_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(7),
          ),
          Text(
            "This is Health UX Kit,\nWelcome!",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline3.copyWith(
                  color: nameColour,
                  fontSize: getProportionateScreenWidth(5),
                ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(1.5),
          ),
          Text(
            "A health vertical UI kit made with\n love for Adobe XD",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.caption.copyWith(
                  color: color2,
                  fontSize: getProportionateScreenWidth(3),
                ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(6),
          ),
          Image.asset(
            "assets/images/Doctor.png",
            height: getProportionateScreenHeight(32),
          ),
          SizedBox(
            height: getProportionateScreenHeight(7),
          ),
          buildDottedContainer(),
          SizedBox(
            height: getProportionateScreenHeight(6),
          ),
          DefaultButton(
            onPress: () =>
                Navigator.pushNamed(context, NotificationScreen.routeName),
            text: "GET STARTED",
          ),
          SizedBox(
            height: getProportionateScreenHeight(2),
          ),
          Text.rich(
            TextSpan(
                text: "Already have an account?",
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: color2.withOpacity(0.55),
                    ),
                children: [
                  TextSpan(
                    text: " Sign In",
                    style: TextStyle(
                      color: nameColour,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  Row buildDottedContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) => Container(
          margin: EdgeInsets.only(right: 10),
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: index == 3 ? tradeMarkColour : color4,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
