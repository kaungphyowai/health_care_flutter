import 'package:flutter/material.dart';
import 'package:health_care_flutter/components/default_button.dart';
import 'package:health_care_flutter/constants.dart';
import 'package:health_care_flutter/otp/otp_screen.dart';

import '../../SizeConfig.dart';
import 'logoContainer.dart';
import 'notificatioContainer.dart';

class StackLayer extends StatelessWidget {
  const StackLayer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> services = [
      "Weekly healthy suggestions",
      "Daily health reminder and reprot",
      "Tailor made services just for you",
    ];
    return Expanded(
      child: Stack(
        children: [
          buildImageLayer(),
          buildMistyLayer(),
          Positioned(
            top: getProportionateScreenHeight(5),
            right: getProportionateScreenWidth(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildNotiStack(),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                Container(
                  width: getProportionateScreenWidth(80),
                  alignment: Alignment.center,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: services.length,
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.black,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: getProportionateScreenHeight(2),
                          top: getProportionateScreenHeight(2),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/check.png",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              services[index],
                              style:
                                  Theme.of(context).textTheme.bodyText2.apply(
                                        color: nameColour,
                                      ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(4),
                ),
                DefaultButton(
                    text: "Turn on",
                    onPress: () => Navigator.pushNamed(context, Otp.routeName)),
                SizedBox(
                  height: getProportionateScreenHeight(2),
                ),
                Text(
                  "Skip This",
                  style: Theme.of(context).textTheme.bodyText2.apply(
                        color: nameColour,
                      ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildNotiStack() {
    return Container(
      width: getProportionateScreenWidth(80),
      height: getProportionateScreenHeight(15),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
            right: 0,
            top: getProportionateScreenHeight(2),
            child: NotifiContainer(),
          ),
          Positioned(
            left: 0,
            top: getProportionateScreenHeight(4),
            child: LogoContainer(),
          ),
          Positioned(
            right: getProportionateScreenWidth(-2),
            top: getProportionateScreenHeight(2),
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
          )
        ],
      ),
    );
  }

  Positioned buildMistyLayer() {
    return Positioned(
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
    );
  }

  Positioned buildImageLayer() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Image.asset(
        "assets/images/iphone.png",
        height: getProportionateScreenHeight(58),
      ),
    );
  }
}
