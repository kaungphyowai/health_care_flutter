import 'package:flutter/material.dart';
import 'package:health_care_flutter/components/default_button.dart';
import 'package:health_care_flutter/constants.dart';
import 'package:health_care_flutter/home/home_screen.dart';

import '../../SizeConfig.dart';
import 'custom_text_field.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(6),
            ),
            Text(
              "Login",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline3.copyWith(
                    fontSize: 17,
                  ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(3),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenHeight(5),
              ),
              child: Text(
                "Enter your login details to access your account",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: color2,
                    ),
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            CustomTextField(
              icon: Icons.email,
              text: "Email",
              obsuretext: false,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.03,
            ),
            CustomTextField(
              icon: Icons.visibility_off_outlined,
              text: "Password",
              obsuretext: true,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.05,
            ),
            DefaultButton(
                text: "LOG IN",
                onPress: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName))
          ],
        ),
      ),
    );
  }
}
