import 'package:flutter/material.dart';

import '../list_page/widgets/plan_list_page_checkbox.dart';

class TempPage extends StatelessWidget {
  const TempPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DialogExample();
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text('작업 정렬 기준'),
          content: Column(
            mainAxisSize: MainAxisSize.min, // 자식 위젯 크기에 맞춤
            children: [
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
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: Text('선택'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
