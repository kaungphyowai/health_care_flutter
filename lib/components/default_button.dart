import 'package:flutter/material.dart';

import '../SizeConfig.dart';
import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.text,
    @required this.onPress,
  }) : super(key: key);
  final String text;
  final GestureTapCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
        ),
        width: double.infinity,
        height: getProportionateScreenHeight(8),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius:
                BorderRadius.circular(getProportionateScreenHeight(8) / 2.5),
            gradient: RadialGradient(
              center: Alignment(-0.5, -7),
              radius: getProportionateScreenHeight(1),
              colors: [
                gradientColour2,
                gradientColour1,
              ],
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                offset: Offset(15, 15),
                color: gradientColour1.withOpacity(0.21),
              )
            ]),
        child: Align(
          alignment: Alignment(0, 0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}
