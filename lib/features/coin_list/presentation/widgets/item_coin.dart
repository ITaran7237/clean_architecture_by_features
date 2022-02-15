import 'package:clean_architecture_app/utils/navigation/navigation_manager.dart';
import 'package:flutter/material.dart';
import '../../domain/entities/crypto_coins_data.dart';
import 'custom_list_item.dart';

class ItemCoin extends StatelessWidget {
  final CryptoCoinsData? _coinData;
  final bool _isLargeScreen;
  final Function(CryptoCoinsData?) callback;

  ItemCoin(this._coinData, this._isLargeScreen, this.callback);

  @override
  Widget build(BuildContext context) {
    return CustomItemCard(
      shadowColor: Color.fromRGBO(161, 190, 213, 0.29),
      height: 80,
      child: InkWell(
        onTap: () {
          _isLargeScreen
              ? callback(_coinData)
              : NavigationManager.navigateToCoinDetailsScreen(
                  context, _coinData);
        },
        child: Center(child: Row(children: getCoinList(context))),
      ),
    );
  }

  List<Widget> getCoinList(BuildContext context) {
    List<Widget> widgetList = [];
    widgetList.add(
      Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(_coinData?.coinInfo?.name ?? '',
                maxLines: 2,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
          )),
    );

    widgetList.add(
      Expanded(flex: 3, child: Text(_coinData?.coinInfo?.fullName ?? '')),
    );

    widgetList.add(Expanded(
        flex: 3,
        child: Text(_coinData?.display?.usd?.price ?? '',
            style: TextStyle(fontSize: 18, color: Colors.green))));

    widgetList.add(Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Icon(Icons.arrow_right, color: Colors.grey),
        )));
    return widgetList;
  }
}
