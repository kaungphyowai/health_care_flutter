import 'package:flutter/material.dart';
import 'package:health_care_flutter/home/home_screen.dart';
import 'package:health_care_flutter/login/login_screen.dart';
import 'package:health_care_flutter/onboarding/onboarding.dart';
import 'package:health_care_flutter/otp/otp_screen.dart';
import 'package:health_care_flutter/profile/profile_screen.dart';

import 'turn_on_notificaiton/notification_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnBoarding.routeName: (context) => OnBoarding(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  Otp.routeName: (context) => Otp(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
