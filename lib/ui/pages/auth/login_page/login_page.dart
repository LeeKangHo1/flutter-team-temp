import 'package:flutter/material.dart';

import 'widgets/login_body.dart'; // 변경된 body 클래스를 import

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LoginBody(), // body 위젯을 여기서 사용
    );
  }
}
