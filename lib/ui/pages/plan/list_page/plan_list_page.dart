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
          Divider(),
          // TODO 작업이 하나도 없을 때 보여주는 화면 PlanListBodyCheckbox
          // 확장 패널
          PlanListPageExpansion(),
          Divider(),
          Center(
            child: Text(
              "완료된 모든 작업 확인",
              style: TextStyle(
                color: Colors.grey, // 글자색을 회색으로 설정
                decoration: TextDecoration.underline, // 밑줄 추가
              ),
            ),
          ),
          // TODO 우측 하단 항상 떠있는 작업 생성 버튼 어떻게 할
          Column(
            children: [
              Align(
                alignment: Alignment.bottomRight, // 우측 하단으로 정렬
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 40.0,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
