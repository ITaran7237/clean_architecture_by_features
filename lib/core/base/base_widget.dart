import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'base_cubit.dart';
import 'base_state.dart';

class BaseWidget extends StatefulWidget {
  final Widget child;
  final bool isShowInitialLoading;
  final BaseCubit cubit;

  BaseWidget(this.child, this.isShowInitialLoading, this.cubit);

  @override
  _ErrorWidgetState createState() => _ErrorWidgetState();
}

class _ErrorWidgetState<C extends Cubit> extends State<BaseWidget> {
  late StreamSubscription<BaseState> _baseStateSubscription;

  @override
  void initState() {
    super.initState();
    _baseStateSubscription = _getSubscriptionError();
  }

  @override
  void dispose() {
    _baseStateSubscription.cancel();
    super.dispose();
  }

  StreamSubscription<BaseState> _getSubscriptionError() {
    return widget.cubit.errorControllerStream.listen((state) {
      if (state is ShowErrorDialogState) {
        _showSnackBar(state.message);
      }
      if (state is HideErrorDialogState) {
        _hideSnackBars();
      }
    });
  }

  void _hideSnackBars() {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  void _showSnackBar(String message) async {
    _hideSnackBars();
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
          backgroundColor: Colors.red,
          content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColors.getColor(COLOR_BACKGROUND),
      child: Stack(
        children: <Widget>[
          Column(children: <Widget>[Expanded(child: widget.child)]),
          StreamBuilder(
            initialData:
            widget.isShowInitialLoading ? ShowLoadingState() : null,
            stream: widget.cubit.loadingControllerStream,
            builder: (BuildContext context, AsyncSnapshot state) {
              if (state.data is ShowLoadingState) {
                return Center(child: CircularProgressIndicator());
              }
              if (state.data is HideLoadingState) {
                return Container();
              } else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
