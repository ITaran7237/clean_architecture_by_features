import 'package:clean_architecture_app/features/auth/presentation/widgets/loading_widget.dart';
import 'package:clean_architecture_app/features/coin_list/data/models/coins_response.dart';
import 'package:clean_architecture_app/features/coin_list/presentation/cubit/coins_cubit.dart';
import 'package:clean_architecture_app/features/coin_list/presentation/widgets/item_coin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_architecture_app/locator.dart';

class CoinListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody(context));
  }

  BlocProvider<CoinsCubit> buildBody(BuildContext context) {
    return BlocProvider(
        create: (_) => serviceLocator<CoinsCubit>(),
        child: SafeArea(
          child: LayoutBuilder(builder: (context, constraints) {
            return BlocConsumer<CoinsCubit, CoinsState>(
                listener: (context, state) {
                  if(state is ErrorState){
                    _showSnackBar(context, state.message, isError: true);
                  }
                },
                builder: ((context, state) {
                  if (state is CoinsInitialState) {
                    return _buildListView([]);
                  } else if (state is LoadingState) {
                    return LoadingWidget();
                  } else if (state is OnOnGotCoinsDataState) {
                    return _buildListView(state.coinsData.data ?? []);
                  } else {
                    return Container();
                  }
                }));
          }),
        ));
  }

  Widget _buildListView(List<Data> list) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemCoin(list[index]);
        });
  }

  _showSnackBar(BuildContext context, String text, {bool isError = false}) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
          backgroundColor: isError ? Colors.red : Colors.green,
          content: Text(text)),
    );
  }
}
