import 'package:flutter/material.dart';


class Buttons extends StatelessWidget {
  const Buttons({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(onPressed: (){},color: Colors.red, child: Text('HOLA'),);
  }
}