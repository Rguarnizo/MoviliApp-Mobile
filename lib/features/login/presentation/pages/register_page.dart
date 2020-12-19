import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Center(child: Text('Register Page')),
    );
  }

  getAppBar() {
    return AppBar(

    );
  }
}

