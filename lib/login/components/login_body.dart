import 'package:flutter/material.dart';
import 'package:health_care_flutter/constants.dart';

import '../../SizeConfig.dart';

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
              height: getProportionateScreenHeight(2),
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
            TextField(
              decoration: InputDecoration(),
            ),
          ],
        ),
      ),
    );
  }
}
