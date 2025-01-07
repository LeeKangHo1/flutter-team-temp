import 'package:flutter/material.dart';

import 'widgets/profile_body.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ProfileBody(), // ProfileBody 사용
    );
  }
}
