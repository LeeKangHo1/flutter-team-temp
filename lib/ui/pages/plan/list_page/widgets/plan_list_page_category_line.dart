import 'package:flutter/material.dart';

import 'plan_list_page_category_circle.dart';

class PlanListPageCategoryLine extends StatelessWidget {
  PlanListPageCategoryLine({super.key});

  final categories = [
    "카테고리1",
    "카테고리2",
    "카테고리3",
    "카테고리4",
    "카테고리5",
    "카테고리6",
    "카테고리7",
    "카테고리8",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Center(
            child: PlanListPageCategoryCircle(
              title: categories[index],
              position: index,
            ),
          );
        },
      ),
    );
  }
}
