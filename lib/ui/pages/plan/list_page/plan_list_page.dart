import 'package:flutter/material.dart';

import 'widgets/plan_list_page_category_line.dart';
import 'widgets/plan_list_page_expansion.dart';
import 'widgets/plan_list_page_point_popup.dart';

class PlanListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // TODO 검색 버튼 누를 경우 카테고리 라인 제거하고 검색 textform
          Row(
            children: [
              // 수평 스크롤 카테고리
              Expanded(
                child: PlanListPageCategoryLine(),
              ),
              // 점 3개 팝업 메뉴
              PlanListPagePointPopup(),
            ],
          ),
          // TODO 작업이 하나도 없을 때 보여주는 화면 PlanListBodyCheckbox
          // 확장 패널
          PlanListPageExpansion(),
          PlanListPageExpansion(),
          PlanListPageExpansion(),
          Center(
            child: Text(
              "완료된 모든 작업 확인",
              style: TextStyle(
                color: Colors.grey, // 글자색을 회색으로 설정
                decoration: TextDecoration.underline, // 밑줄 추가
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // + 버튼
        },
        child: const Icon(Icons.add, color: Colors.white,),
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
      ),
    );
  }
}
