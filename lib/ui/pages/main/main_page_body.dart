import 'package:flutter/material.dart';

import '../plan/category_page/category_page.dart';
import '../plan/list_page/plan_list_page.dart';
import '../plan/sortby_page/sortby_dialog.dart';
import '../plan/test_page/temp_page.dart';

class MainPageBody extends StatelessWidget {
  final int selectedIndex;

  MainPageBody({
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: selectedIndex,
      children: [
        TempPage(),
        PlanListPage(),
        // 캘린더
        SortbyDialog(),
        // 내 정보
        CategoryPage(),
      ],
    );
    ;
  }
}
