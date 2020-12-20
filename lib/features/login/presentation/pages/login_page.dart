import 'package:flutter/material.dart';
import 'package:moviliapp_mobile/core/widgets/text_form_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key key}) : super(key: key);

  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;

    height = sizeScreen.height;
    width = sizeScreen.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          decoration: backgroudDecorate(),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/Images/TMLogo.png',
                  width: 150,
                  height: 150,
                ),
                _formLogin(context),
                _createAccount(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  backgroudDecorate() {
    return BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.red, Colors.red[900]]),
    );
  }

  _formLogin(context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        shape: BoxShape.rectangle,
      ),
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(30),
      height: height * (1 - 0.6),
      width: width * (1 - 0.1),
      child: Column(
        children: [
          Text(
            'Iniciar Sesión',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 30,
          ),
          TextFormFieldApp(
            hint: 'Ingrese su correo',
            icon: Icons.email_outlined,
          ),
          TextFormFieldApp(
            hint: 'Ingrese su contraseña',
            icon: Icons.lock_outline,
            obscureText: true,
          ),
          SizedBox(
            height: 10,
          ),
          OutlinedButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('Home');
            },
            icon: Icon(Icons.chevron_right, size: 18),
            label: Text(
              "Iniciar Sesión",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  _createAccount(context) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      children: [
      Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: 20),
        height: height * (0.2),
        width: width * (1 - 0.1),
        child: _createAccountContent(context),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
       Positioned(bottom: -20,child:_socialMedia(),)
    ]);
  }

  _socialMedia() {
    return Row(children: [
        FlatButton(onPressed: (){},child: Image.asset('assets/Images/FB.png',height: 50,width: 50,),),
        FlatButton(onPressed: (){},child: Image.asset('assets/Images/Twitter.png',height: 50,width: 50,),),
        FlatButton(onPressed: (){},child: Image.asset('assets/Images/YT.png',height: 50,width: 50,),),
        FlatButton(onPressed: (){},child: Image.asset('assets/Images/Inst.png',height: 50,width: 50,),),
        
      ]);
  }

  _createAccountContent(BuildContext context) {
    return Column(
      children: [
        Text('¿No tienes cuenta? Crea una...', style: TextStyle(fontSize: 18),),
        SizedBox(height: 15,),
        OutlinedButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('Register');
            },
            icon: Icon(Icons.chevron_right, size: 18),
            label: Text(
              "Crear una cuenta",
              style: TextStyle(fontSize: 18),
            ),),
      ],
    );
  }
}
