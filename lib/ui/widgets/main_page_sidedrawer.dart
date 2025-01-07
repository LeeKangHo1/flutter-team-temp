import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPageSidedrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            'assets/logo.png',
            width: 100,
            height: 100,
          ),
          Row(
            children: [
              Icon(CupertinoIcons.rectangle_grid_2x2_fill),
              Text("범주"),
            ],
          ),
          Row(
            children: [
              Icon(CupertinoIcons.plus),
              Text("새로 만들기"),
            ],
          ),
          Row(
            children: [
              Icon(CupertinoIcons.gear),
              Text("비밀번호 변경"),
            ],
          ),
          Row(
            children: [
              Icon(CupertinoIcons.square_arrow_left),
              Text("로그아웃"),
            ],
          ),
        ],
      ),
    );
  }
}
