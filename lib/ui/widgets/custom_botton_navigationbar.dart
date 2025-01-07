import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottonNavigationbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onClickBottomNavigation;

  CustomBottonNavigationbar({
    Key? key,
    required this.selectedIndex,
    required this.onClickBottomNavigation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedIndex,
        // 위의 index: 랑 똑같이 설정해야 함
        onTap: (value) {
          // value가 현재 index
          onClickBottomNavigation(value);
        },
        // 바텀 네비게이션 바 설정
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bars),
            label: "",
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.doc_plaintext), label: "과제"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.calendar), label: "캘린더"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person), label: "내정보"),
        ]);
  }
}
