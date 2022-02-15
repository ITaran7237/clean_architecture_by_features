import 'package:flutter/material.dart';
import '../../domain/entities/crypto_coins_data.dart';

class DetailsWidget extends StatelessWidget {
  final CryptoCoinsData? data;

  DetailsWidget(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SingleChildScrollView(
          child: Column(children: _buildCoinDetails())),
    );
  }

  List<Widget> _buildCoinDetails() {
    List<Widget> widgetList = [];
    widgetList.add(_titlePair());
    widgetList.add(SizedBox(height: 16));
    widgetList.add(_getTextWithData('Market: ', data?.display?.usd?.market));
    widgetList.add(_getTextWithData('Price: ', data?.display?.usd?.price));
    widgetList.add(_getTextWithData('Last update: ', data?.display?.usd?.lastUpdate));
    widgetList.add(_getTextWithData('Last volume: ', data?.display?.usd?.lastVolume));
    widgetList.add(_getTextWithData('Last volume to: ', data?.display?.usd?.lastVolumeTo));
    widgetList.add(_getTextWithData('Open day: ', data?.display?.usd?.openDay));
    widgetList.add(_getTextWithData('High day: ', data?.display?.usd?.highDay));
    widgetList.add(_getTextWithData('Low day: ', data?.display?.usd?.lowDay));
    widgetList.add(_getTextWithData('Open 24 hour: ', data?.display?.usd?.open24hour));
    widgetList.add(_getTextWithData('High 24 hour: ', data?.display?.usd?.high24hour));
    widgetList.add(_getTextWithData('Low 24 hour: ', data?.display?.usd?.low24hour));
    widgetList.add(_getTextWithData('Top Tier Volume 24 hour: ', data?.display?.usd?.topTierVolume24hour));
    widgetList.add(_getTextWithData('Top Tier Volume 24 hour to: ', data?.display?.usd?.topTierVolume24hourTo));
    widgetList.add(_getTextWithData('Last market: ', data?.display?.usd?.lastMarket));
    return widgetList;
  }

  Center _titlePair() => Center(
      child: Text('${data?.coinInfo?.name ?? ''}/USD',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24)));

  Widget _getTextWithData(String name, String? details) {
    return Container(
      padding: EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      child: RichText(
          text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 24),
              children: <TextSpan>[
                TextSpan(text: name, style: TextStyle(color: Colors.green)),
                TextSpan(
                  text: details ?? '',
                  style: TextStyle(color: Colors.black),
                )
              ])),
    );
  }
}
