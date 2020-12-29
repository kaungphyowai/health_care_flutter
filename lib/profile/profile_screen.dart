import 'package:flutter/material.dart';

import 'components/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  static final String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: ProfileBody(),
    );
  }
}
