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
                Image.asset('assets/Images/TMLogo.png',width: 150,height: 150,),
                _formLogin(),
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

  _formLogin() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        shape: BoxShape.rectangle,        
      ),      
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(30),
      height: height*(1-0.6),
      width: width*(1-0.1),      
      child: Column(
        children: [
          Text('Iniciar Sesión',style: TextStyle(fontSize: 18),),
          SizedBox(height: 30,),
          TextFormFieldApp(hint: 'Ingrese su correo',icon: Icons.email_outlined,),
          TextFormFieldApp(hint:'Ingrese su contraseña',icon: Icons.lock_outline,obscureText: true,)
        ],
      ),
    );
  }
}
