import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        overflow: Overflow.visible,
        children: [
          _backgroundDesing(sizeScreen),
          _backDesing(sizeScreen, context),
          _tmLogo(sizeScreen),
          _form(sizeScreen,context),
        ],
      ),
    );
  }

  _backgroundDesing(Size sizeScreen) {
    return Container(
      height: sizeScreen.height,
      width: sizeScreen.width,
      decoration: BoxDecoration(        
        gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [Colors.redAccent,Colors.red[900]]),
      ),
    );
  }

  _backDesing(Size sizeScreen, BuildContext context) {
    return Container(      
      height: sizeScreen.height * (1 - 0.2),
      width: sizeScreen.width * (1 - 0.1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white),
    );
  }

  _tmLogo(Size size) {
    return Positioned(
      top: size.height*0.1,
        child: Image.network(
      'https://upload.wikimedia.org/wikipedia/commons/8/8e/TransMilenio_Logo.png',
      height: 150,
      width: 150,
    ));
  }

  _form(Size sizeScreen, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
        ],
      ),
    );
  }

}
