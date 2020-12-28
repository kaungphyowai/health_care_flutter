import 'package:flutter/material.dart';
import 'package:health_care_flutter/SizeConfig.dart';
import 'package:health_care_flutter/components/default_button.dart';
import 'package:health_care_flutter/constants.dart';
import 'package:health_care_flutter/login/login_screen.dart';

class OtpBody extends StatefulWidget {
  @override
  _OtpBodyState createState() => _OtpBodyState();
}

class _OtpBodyState extends State<OtpBody> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;
  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: SizedBox(
          width: double.infinity,
          child: Form(
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(6),
                ),
                Text(
                  "Verify your number with\ncodes sent to you",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3.copyWith(
                        fontSize: 17,
                      ),
                ),
                SizedBox(
                  height: getProportionateScreenWidth(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: getProportionateScreenWidth(15),
                      height: getProportionateScreenWidth(15),
                      child: TextFormField(
                        autofocus: true,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin2FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(15),
                      height: getProportionateScreenWidth(15),
                      child: TextFormField(
                        focusNode: pin2FocusNode,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin3FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(15),
                      height: getProportionateScreenWidth(15),
                      child: TextFormField(
                        focusNode: pin3FocusNode,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          nextField(value: value, focusNode: pin4FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(15),
                      height: getProportionateScreenWidth(15),
                      child: TextFormField(
                        focusNode: pin4FocusNode,
                        obscureText: true,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          pin4FocusNode.unfocus();
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.35),
                Text.rich(
                  TextSpan(
                    text: "I didn't receive the code ",
                    style: Theme.of(context).textTheme.bodyText2.apply(
                          color: color2.withOpacity(0.55),
                        ),
                    children: [
                      TextSpan(
                        text: "Resend Code",
                        style: Theme.of(context).textTheme.bodyText2.apply(
                              color: nameColour,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                DefaultButton(
                    text: "Continue",
                    onPress: () =>
                        Navigator.pushNamed(context, LoginScreen.routeName)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  filled: true,
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
  fillColor: Colors.transparent,
  focusColor: Colors.white,
  hoverColor: Colors.white,
);
OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15) / 4),
    borderSide: BorderSide(
      color: color4,
    ),
  );
}

// Container(
//             width: getProportionateScreenWidth(14),
//             height: getProportionateScreenWidth(14),
//             decoration: BoxDecoration(
//               color: tradeMarkColour,
//               borderRadius:
//                   BorderRadius.circular(getProportionateScreenWidth(14) / 3),
//             ),
//             alignment: Alignment.center,
//             child: Text(
//               "5",
//               style: TextStyle(
//                   fontSize: getProportionateScreenWidth(4),
//                   color: Colors.white),
//             ),
//           ),
