import 'package:flutter/material.dart';
import 'custom_list_item.dart';

class ToolbarCoins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      shadowColor: Color.fromRGBO(161, 190, 213, 0.29),
      height: 95,
      child: Container(
        margin: const EdgeInsets.only(top: 24),
        child: Row(children: getCoinList(context)),
      ),
    );
  }

  List<Widget> getCoinList(BuildContext context) {
    List<Widget> widgetList = [];
    widgetList.add(Padding(
      padding: const EdgeInsets.all(16),
      child: _getCustomToolbarText('Name'),
    ));
    widgetList.add(_getCustomToolbarText('Full name'));
    widgetList.add(_getCustomToolbarText('Last price'));
    widgetList.add(Expanded(flex: 1, child: Container()));
    return widgetList;
  }

  Expanded _getCustomToolbarText(String text) {
    return Expanded(
        flex: 3,
        child: Text(text,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.black54)));
  }
}
