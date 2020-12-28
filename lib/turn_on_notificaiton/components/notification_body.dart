import 'package:flutter/material.dart';
import 'package:health_care_flutter/SizeConfig.dart';
import 'package:health_care_flutter/constants.dart';
import 'package:health_care_flutter/turn_on_notificaiton/components/stack_layer.dart';

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
          StackLayer(),
        ],
      ),
    );
  }
}
