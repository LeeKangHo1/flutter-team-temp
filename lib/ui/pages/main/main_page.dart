import 'package:flutter/material.dart';

import '../../widgets/custom_botton_navigationbar.dart';
import 'main_page_body.dart';
import 'main_page_sidedrawer.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 1. 상태
  int selectedIndex = 1;

  // 2. 행위, onTap보다 여기에 적는 것을 추천
  void onClickBottomNavigation(int value) {
    selectedIndex = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MainPageSidedrawer(),
      // 임시 앱바
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Temp AppBar"),
        centerTitle: true,
      ),
      body: MainPageBody(selectedIndex: selectedIndex),
      bottomNavigationBar: CustomBottonNavigationbar(
          selectedIndex: selectedIndex,
          onClickBottomNavigation: onClickBottomNavigation),
    );
  }
}
