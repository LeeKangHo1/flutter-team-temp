import 'package:flutter/material.dart';

class PlanListPageCategoryCircle extends StatelessWidget {
  PlanListPageCategoryCircle(
      {Key? key, required this.title, required this.position})
      : super(key: key);

  final String title;
  final int position;

  @override
  Widget build(BuildContext context) {
    var paddingValue = position == 0 ? 16.0 : 8.0;

    return Padding(
      padding: EdgeInsets.only(left: paddingValue),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 12, color: Colors.white),
        ),
      ),
    );
  }
}
