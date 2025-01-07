import 'package:flutter/material.dart';

import '../../../widgets/custom_button.dart';

class TempPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomButton("알림", () {
        _showAlarmDialog(context);
      }),
    );
  }

  void _showAlarmDialog(BuildContext context) {

    bool _isSwitched = false;
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialogWithSwitch(),
    );
  }
}

class AlertDialogWithSwitch extends StatefulWidget {
  @override
  _AlertDialogWithSwitchState createState() => _AlertDialogWithSwitchState();
}

List<String> list = ["마감 시간", "5분 전", "10분 전", "30분 전", "1시간 전", "1일 전"];

class _AlertDialogWithSwitchState extends State<AlertDialogWithSwitch> {
  bool _isSwitched = false; // 스위치 상태를 추적하는 변수
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('알림 꺼짐'),
          Switch(
            value: _isSwitched, // 스위치 상태
            onChanged: (bool newValue) {
              setState(() {
                _isSwitched = newValue; // 스위치 상태 변경 시 상태 업데이트
              });
            },
          ),
        ],
      ),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("에 알림"),
          SizedBox(
            width: 76,
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: dropdownValue,
                style: TextStyle(fontSize: 13),
                items: list
                    .map((String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ))
                    .toList(),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('취소'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('완료'),
        ),
      ],
    );
  }
}