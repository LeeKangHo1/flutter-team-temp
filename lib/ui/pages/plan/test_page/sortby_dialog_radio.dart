import 'package:flutter/material.dart';

enum SingingCharacter {
  lafayette,
  jefferson,
  jefferson2,
  jefferson3,
  jefferson4
}

class SortbyDialogRadio extends StatefulWidget {
  const SortbyDialogRadio({super.key});

  @override
  State<SortbyDialogRadio> createState() => _SortbyDialogRadioState();
}

class _SortbyDialogRadioState extends State<SortbyDialogRadio> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('마감 날짜 및 시간'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('작업 생성 시간(최신순 하위)'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('작업 생성 시간(최신순 상위)'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson2,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('알파벳 A-Z'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson3,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Text('알파벳 Z-A'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.jefferson4,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
