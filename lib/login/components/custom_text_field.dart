import 'package:flutter/material.dart';

import '../../SizeConfig.dart';
import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.obsuretext,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final bool obsuretext;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 30,
      shadowColor: gradientColour1.withOpacity(0.13),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: TextField(
        obscureText: obsuretext,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenHeight(3.5),
          ),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            gapPadding: 1,
            borderSide: BorderSide.none,
          ),
          suffixIcon: Icon(
            icon,
            color: nameColour.withOpacity(0.1),
          ),
          fillColor: Colors.white,
          hintText: text,
          hintStyle: Theme.of(context).textTheme.bodyText2.copyWith(
                color: nameColour.withOpacity(0.5),
              ),
        ),
      ),
    );
  }
}
