import 'package:flutter/material.dart';
import 'package:health_care_flutter/components/custom_container.dart';
import 'package:health_care_flutter/components/online_user.dart';
import 'package:health_care_flutter/profile/profile_screen.dart';

import '../../SizeConfig.dart';
import '../../constants.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Row buildMenuAndCircularAvatar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: nameColour,
          ),
          OnlineUser(
            radius: 7,
            greenCircleRadius: 5,
          )
        ],
      );
    }

    return Container(
      height: SizeConfig.screenHeight * 0.4,
      decoration: BoxDecoration(
        color: color4,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular((SizeConfig.screenHeight / 8) * 0.4),
          bottomLeft: Radius.circular((SizeConfig.screenHeight / 8) * 0.4),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(5),
              vertical: getProportionateScreenWidth(1)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildMenuAndCircularAvatar(),
              Padding(
                padding: EdgeInsets.only(
                  right: getProportionateScreenWidth(5),
                  top: getProportionateScreenHeight(4),
                  bottom: getProportionateScreenHeight(4),
                  left: getProportionateScreenWidth(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good Evening\nAlexis",
                      style: Theme.of(context).textTheme.headline3.apply(
                            color: nameColour,
                          ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(2),
                    ),
                    Text(
                      "Your target for today is to keep positive mindset and smile to everyone you meet.",
                      style: Theme.of(context).textTheme.bodyText2.apply(
                            color: color2,
                          ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(4),
                    ),
                    Row(
                      children: [
                        CustomContainer(
                            onTap: () {},
                            borderwidth: 0,
                            bordercolor: Colors.white,
                            textcolor: Colors.white,
                            color: nameColour,
                            text: "MORE DETAILS"),
                        SizedBox(
                          width: getProportionateScreenWidth(5),
                        ),
                        CustomContainer(
                            onTap: () => Navigator.pushNamed(
                                context, ProfileScreen.routeName),
                            borderwidth: 0,
                            bordercolor: Colors.white,
                            textcolor: Colors.white,
                            color: gradientColour1,
                            text: "VIEW YOUR PROFILE"),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
