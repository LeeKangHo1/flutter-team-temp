import 'package:flutter/material.dart';

import '../list_page/widgets/plan_list_page_checkbox.dart';

class SortbyDialog extends StatelessWidget {
  const SortbyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            children: [
              Text(
                "작업 정렬 기준",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        ListTile(
          // TODO: 여기 쓸 체크박스 따로 만들기
          leading: PlanListPageCheckbox(),
          title: Text("마감 날짜 및 시간"),
        ),
        ListTile(
          leading: PlanListPageCheckbox(),
          title: Text("작업 생성 시간(최신순 하위)"),
        ),
        ListTile(
          leading: PlanListPageCheckbox(),
          title: Text("작업 생성 시간(최신순 상위)"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                "선택",
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
