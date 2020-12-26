import 'package:flutter/material.dart';
import 'package:health_care_flutter/onboarding/onboarding.dart';
import 'turn_on_notificaiton/notification_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoarding.routeName: (context) => OnBoarding(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
};
