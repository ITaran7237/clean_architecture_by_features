// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'base_cubit.dart';
// import 'base_widget.dart';
//
// abstract class BaseStatelessWidget<B extends BlocBase> extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<B>(
//         bloc: getScreenBloc(),
//         child: Stack(
//           children: <Widget>[
//             Scaffold(
//                 body: SafeArea(
//                     bottom: false,
//                     child: BaseWidget(getWidget(context), showInitialLoading(),
//                         cubit as BaseCubit))),
//           ],
//         );
//
//
//         Container(
//             child: Stack(
//               children: <Widget>[
//                 Opacity(
//                     opacity: getOpacity(),
//                     child: Container(color: getBackground())),
//                 SafeArea(
//                     child: Scaffold(
//                         backgroundColor: Colors.transparent,
//                         body: getWidget(context))),
//               ],
//             )));
//   }
//
//   B getScreenBloc();
//
//   Widget getWidget(BuildContext context);
// }
//
//
// abstract class BaseStateWithCubit<W extends StatelessWidget, C extends Cubit> {
//   @protected
//   late C cubit;
//
//   @protected
//   @override
//   void initState() {
//     super.initState();
//     cubit = context.read<C>();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         Scaffold(
//             body: SafeArea(
//                 bottom: false,
//                 child: BaseWidget(getWidget(context), showInitialLoading(),
//                     cubit as BaseCubit))),
//       ],
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   Widget getWidget(BuildContext context);
//
//   bool showInitialLoading() => false;
// }
