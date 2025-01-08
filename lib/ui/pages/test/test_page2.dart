import 'package:flutter/material.dart';
import 'package:planit/ui/widgets/custom_button.dart';

class TestPage2 extends StatelessWidget {
  TestPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        CustomButton("과제", () {
          Navigator.pushNamed(context, "/task");
        }),
        SizedBox(height: 10),
        CustomButton("메모", () {
          Navigator.pushNamed(context, "/memo");
        }),
        SizedBox(height: 10),
        CustomButton("다이알로그", () {
          Navigator.pushNamed(context, "/dialog");
        }),
        SizedBox(height: 10),
        CustomButton("달력", () {
          Navigator.pushNamed(context, "/calendar");
        }),
        SizedBox(height: 10),
        CustomButton("프로필", () {
          Navigator.pushNamed(context, "/profile");
        }),
        SizedBox(height: 10),
        CustomButton("회원가입", () {
          Navigator.pushNamed(context, "/signup_page");
        }),
        SizedBox(height: 10),
        CustomButton("로그인", () {
          Navigator.pushNamed(context, "/login_page");
        }),
        SizedBox(height: 10),
        CustomButton("아이디 찾기", () {
          Navigator.pushNamed(context, "/find-id");
        }),
        SizedBox(height: 10),
        CustomButton("비밀번호 찾기", () {
          Navigator.pushNamed(context, "/find-password");
        }),
        SizedBox(height: 10),
        CustomButton("비밀번호 변경", () {
          Navigator.pushNamed(context, "/change-password");
        }),
      ],
    );
  }
}
