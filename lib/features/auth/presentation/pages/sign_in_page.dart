import 'package:clean_architecture_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:clean_architecture_app/features/auth/presentation/widgets/loading_widget.dart';
import 'package:clean_architecture_app/features/auth/presentation/widgets/auth_button_widget.dart';
import 'package:clean_architecture_app/utils/navigation/navigation_manager.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_architecture_app/locator.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody(context));
  }

  BlocProvider<AuthCubit> buildBody(BuildContext context) {
    _emailTextController.text = "itrn.dev@gmail.com";
    _passwordTextController.text = "123456";
    return BlocProvider(
        create: (_) => serviceLocator<AuthCubit>(),
        child: SafeArea(
          child: LayoutBuilder(builder: (context, constraints) {
            return BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
              if (state is OnSuccessLoginState) {
                _showSnackBar(context, 'Successful authorization');
                NavigationManager.navigateToCoinListScreen(context);
              }
            }, builder: ((context, state) {
              if (state is AuthInitialState || state is ErrorState) {
                return buildAnimatedContainer(context, constraints, state);
              } else if (state is LoadingState) {
                return LoadingWidget();
              } else {
                return Container();
              }
            }));
          }),
        ));
  }

  AnimatedContainer buildAnimatedContainer(
      BuildContext context, BoxConstraints constraints, AuthState state) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        color: Colors.lightBlueAccent[80],
        padding: constraints.maxWidth < 500
            ? EdgeInsets.zero
            : const EdgeInsets.all(24),
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            constraints: BoxConstraints(maxWidth: 500),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _title(context),
                  TextField(
                      controller: _emailTextController,
                      decoration: InputDecoration(labelText: "Email")),
                  TextField(
                      obscureText: true,
                      controller: _passwordTextController,
                      decoration: InputDecoration(labelText: "Password")),
                  state is ErrorState ? Text(state.message) : Container(),
                  AuthButtonWidget(() {
                    context.read<AuthCubit>().login(_emailTextController.text,
                        _passwordTextController.text);
                  }, 'Log in'),
                ]),
          ),
        ));
  }

  RichText _title(BuildContext context) {
    return RichText(
        text: TextSpan(
            style: TextStyle(color: Colors.grey, fontSize: 16),
            children: <TextSpan>[
          TextSpan(text: 'Welcome to the app, please log in or '),
          TextSpan(
              text: 'Sign up',
              style: TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  _clearAll(context);
                  NavigationManager.navigateToSignUpScreen(context);
                })
        ]));
  }

  _clearAll(BuildContext context) {
    _emailTextController.clear();
    _passwordTextController.clear();
    context.read<AuthCubit>().setInitState();
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
