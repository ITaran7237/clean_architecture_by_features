import 'package:flutter/material.dart';

class AuthButtonWidget extends StatelessWidget {
  final Function()? callback;
  final String buttonName;

  AuthButtonWidget(this.callback, this.buttonName);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(buttonName, style: TextStyle(color: Colors.white)),
        onPressed: callback);
  }
}
