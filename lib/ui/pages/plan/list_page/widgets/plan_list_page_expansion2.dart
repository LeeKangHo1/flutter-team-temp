import 'package:flutter/material.dart';
import 'package:planit/ui/pages/plan/list_page/widgets/plan_list_page_checkbox.dart';


class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue: 'Panel $index',
      expandedValue: 'This is item number $index',
    );
  });
}

class PlanListPageExpansion extends StatefulWidget {
  const PlanListPageExpansion({super.key});

  @override
  State<PlanListPageExpansion> createState() => _PlanListPageExpansionState();
}

class _PlanListPageExpansionState extends State<PlanListPageExpansion> {
  final List<Item> _data = generateItems(3);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
            leading: PlanListPageCheckbox(),
            title: Text(
              "영어 단어 10개 외우기",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Text("01-05"),
                Icon(Icons.alarm),
              ],
            ),
            trailing: Icon(Icons.flag),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
