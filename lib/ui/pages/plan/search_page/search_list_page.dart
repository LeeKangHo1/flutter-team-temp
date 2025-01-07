import 'package:flutter/material.dart';

import '../list_page/widgets/plan_list_page_expansion.dart';

class SearchListPage extends StatefulWidget {
  @override
  State<SearchListPage> createState() => _SearchListPageState();
}

class _SearchListPageState extends State<SearchListPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // TODO 검색 textform
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: '검색',
                hintText: '작업을 검색하세요...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),

          Divider(),
          // 확장 패널
          // TODO 여기로 _searchController.text 넘겨서 패널 컨트롤해야함
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
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // + 버튼
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
