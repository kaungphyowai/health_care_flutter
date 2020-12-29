import 'package:flutter/material.dart';

import 'components/homebody.dart';

class HomeScreen extends StatelessWidget {
  static final String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBody(),
    );
  }
}
