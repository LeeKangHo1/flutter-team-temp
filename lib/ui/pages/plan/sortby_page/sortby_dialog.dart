import 'package:flutter/material.dart';
import 'package:planit/ui/pages/plan/sortby_page/widgets/sortby_dialog_radio_list.dart';

class TempPage extends StatelessWidget {
  const TempPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SortbyDialog();
  }
}

class SortbyDialog extends StatelessWidget {
  const SortbyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text('작업 정렬 기준'),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min, // 자식 위젯 크기에 맞춤
            children: [
              SortbyDialogRadioList(),
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
